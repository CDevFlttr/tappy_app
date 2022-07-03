import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tappy_app/custom/colors.dart';

import '../../custom/text_form_field.dart';
import '../../validators/validator_email.dart';

class NewKeyRequestPage extends StatefulWidget {
  const NewKeyRequestPage({Key? key}) : super(key: key);

  @override
  State<NewKeyRequestPage> createState() => _NewKeyRequestPageState();
}

class _NewKeyRequestPageState extends State<NewKeyRequestPage> {
  TextEditingController _emailContr = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                        Text(
                          'Richiedi Nuova Chiave di Attivazione',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff6abaef),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 30,
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
                          'Richiedi'.toUpperCase(),
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
