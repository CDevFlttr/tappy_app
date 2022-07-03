import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tappy_app/pages/auth/cambio_password.dart';
import 'package:tappy_app/pages/auth/registra_utente.dart';
import '../../custom/text_form_field.dart';
import '../../validators/validator_email.dart';
import 'attiva_account.dart';
import '../home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Form(
            key: _formKey,
            child: Column(
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
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF7ac9b6),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Login'.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      )),
                ),
                SizedBox(
                  height: 50,
                ),
                RichText(
                  text: TextSpan(
                      text: 'Reset Password',
                      style: TextStyle(
                        color: Color(0xff6abaef),
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChangePasswordPage(),
                            ),
                          );
                        }),
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                      text: 'Attiva Account',
                      style: TextStyle(
                        color: Color(0xff6abaef),
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ActivationAccountPage(),
                            ),
                          );
                        }),
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                      text: 'Registra Nuovo Utente',
                      style: TextStyle(
                        color: Color(0xff6abaef),
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterUserPage(),
                            ),
                          );
                        }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
