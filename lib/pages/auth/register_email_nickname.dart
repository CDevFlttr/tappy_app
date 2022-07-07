import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tappy_app/utils/show_snackbar.dart';

import '../../custom/colors.dart';
import '../../custom/menu_navigation.dart';
import '../../custom/text_form_field.dart';
import '../../main.dart';
import '../../service/providers.dart';
import '../../validators/validator_email.dart';
import 'attiva_account.dart';

class RegisterUserEmailNicknamePage extends StatefulWidget {
  const RegisterUserEmailNicknamePage({Key? key}) : super(key: key);

  @override
  State<RegisterUserEmailNicknamePage> createState() =>
      _RegisterUserEmailNicknamePageState();
}

class _RegisterUserEmailNicknamePageState
    extends State<RegisterUserEmailNicknamePage> {
  TextEditingController _emailContr = TextEditingController();
  TextEditingController _nickNameContr = TextEditingController();
  bool? checkEmail;
  final _formKey = GlobalKey<FormState>();


  Future signUp() async {
    final isValid = _formKey.currentState!.validate();

    if(!isValid) return;


    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Center(
        child: CircularProgressIndicator(),
      ),
    );

    try{
      final authProvider = await Provider.of<RegisterUserApi>(context, listen: false).registerNewUser(_emailContr.text, _nickNameContr.text, checkEmail!);
      if(authProvider.error == null) {
        UtilsSnack.showSnackBar('${authProvider.message}', context);
        navigatorKey.currentState!.push(
          MaterialPageRoute(builder: (_) => ActivationAccountPage(),
          ),
        );
      } else {
        UtilsSnack.showSnackBar('${authProvider.error}', context);
        navigatorKey.currentState!.pop(context);
      }
    } catch(e) {
      UtilsSnack.showSnackBar('$e', context);
      navigatorKey.currentState!.pop(context);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
        child: Form(
          key: _formKey,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 100,
                          ),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/logo.png"),
                            ),
                          ),
                        ),
                        TextFormFieldCustom(
                          textEditingController: _emailContr,
                          hintTextCustom: 'Email',
                          labelTextCustom: 'Email:',
                          obscure: false,
                          widgetIcon: Icon(Icons.person),
                          validator: (value) {
                            return !Validators.isValidEmail(value!)
                                ? 'Inserisci una e-mail valida'
                                : null;
                          },
                        ),
                        TextFormFieldCustom(
                          textEditingController: _nickNameContr,
                          hintTextCustom: 'NickName',
                          labelTextCustom: 'NickName:',
                          obscure: false,
                          widgetIcon: Icon(Icons.person),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 38.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: kBgColorBtn,
                        ),
                        onPressed: null,
                        child: Text(
                          'Salva'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
