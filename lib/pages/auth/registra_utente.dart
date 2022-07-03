import 'package:flutter/material.dart';
import 'package:tappy_app/pages/auth/register_email_nickname.dart';

import '../../custom/colors.dart';
import '../../custom/menu_navigation.dart';
import '../../custom/text_form_field.dart';
import '../../validators/validator_email.dart';
import 'attiva_account.dart';

class RegisterUserPage extends StatefulWidget {
  const RegisterUserPage({Key? key}) : super(key: key);

  @override
  State<RegisterUserPage> createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  TextEditingController _emailContr = TextEditingController();
  TextEditingController _passwordContr = TextEditingController();
  bool _isHidden = true;
  final _formKey = GlobalKey<FormState>();

  void _onTogglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
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
                          textEditingController: _passwordContr,
                          hintTextCustom: 'Password',
                          labelTextCustom: 'Password:',
                          obscure: _isHidden,
                          widgetIcon: InkWell(
                              onTap: _onTogglePasswordView,
                              child: _isHidden
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility)),
                          validator: (value) {
                            return value!.length < 6
                                ? 'Inserisci min. 6 caratteri'
                                : null;
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 38.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: kBgColorBtn,
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => RegisterUserEmailNicknamePage()));
                        },
                        child: Text(
                          'Registra'.toUpperCase(),
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
