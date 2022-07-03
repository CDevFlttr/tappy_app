import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tappy_app/pages/auth/richiesta_nuova_chiave.dart';

import '../../custom/text_code_verify.dart';
import '../../custom/text_form_field.dart';

class ActivationAccountPage extends StatefulWidget {
  const ActivationAccountPage({Key? key}) : super(key: key);

  @override
  State<ActivationAccountPage> createState() => _ActivationAccountPageState();
}

class _ActivationAccountPageState extends State<ActivationAccountPage> {
  final _formKey = GlobalKey<FormState>();

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
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 60.0,
                          width: 50.0,
                          child: Card(
                            color: Colors.grey.shade200,
                            child: TextCodeVerify(),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 60.0,
                          width: 50.0,
                          child: Card(
                            color: Colors.grey.shade200,
                            child: TextCodeVerify(),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 60.0,
                          width: 50.0,
                          child: Card(
                            color: Colors.grey.shade200,
                            child: TextCodeVerify(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60.0,
                          width: 50.0,
                          child: Card(
                            color: Colors.grey.shade200,
                            child: TextCodeVerify(),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 60.0,
                          width: 50.0,
                          child: Card(
                            color: Colors.grey.shade200,
                            child: TextCodeVerify(),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 60.0,
                          width: 50.0,
                          child: Card(
                            color: Colors.grey.shade200,
                            child: TextCodeVerify(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60.0,
                          width: 50.0,
                          child: Card(
                            color: Colors.grey.shade200,
                            child: TextCodeVerify(),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 60.0,
                          width: 50.0,
                          child: Card(
                            color: Colors.grey.shade200,
                            child: TextCodeVerify(),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 60.0,
                          width: 50.0,
                          child: Card(
                            color: Colors.grey.shade200,
                            child: TextCodeVerify(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF7ac9b6),
                      ),
                      onPressed: null,
                      child: Text(
                        'Attiva'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
                RichText(
                  text: TextSpan(
                      text: 'Richiedi Nuova Chiave',
                      style: TextStyle(
                        color: Color(0xff6abaef),
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewKeyRequestPage(),
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
