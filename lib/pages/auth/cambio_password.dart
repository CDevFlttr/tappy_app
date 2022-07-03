import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../custom/colors.dart';
import '../../custom/menu_navigation.dart';
import '../../custom/text_form_field.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _currentPasswordContr = TextEditingController();
  TextEditingController _newPasswordContr = TextEditingController();
  TextEditingController _confirmPasswordContr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: SizedBox(
          width: 100,
          height: 50,
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      drawer: NavigationDrawerWidget(),
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
                        Text(
                          'Reset Password',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: kColorText,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(
                          color: kColorText,
                        ),
                        TextFormFieldCustom(
                          textEditingController: _currentPasswordContr,
                          hintTextCustom: 'Password Attuale',
                          labelTextCustom: 'Password Attuale:',
                          obscure: false,
                        ),
                        TextFormFieldCustom(
                          textEditingController: _newPasswordContr,
                          hintTextCustom: 'Nuova Password',
                          labelTextCustom: 'Nuova Password:',
                          obscure: false,
                        ),
                        TextFormFieldCustom(
                          textEditingController: _confirmPasswordContr,
                          hintTextCustom: 'Conferma',
                          labelTextCustom: 'Conferma:',
                          obscure: false,
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
