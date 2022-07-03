import 'package:flutter/material.dart';

import '../../custom/colors.dart';
import '../../custom/menu_navigation.dart';
import '../../custom/text_form_field.dart';

class EditBrickPage extends StatefulWidget {
  const EditBrickPage({Key? key}) : super(key: key);

  @override
  State<EditBrickPage> createState() => _EditBrickPageState();
}

class _EditBrickPageState extends State<EditBrickPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameBrickContr = TextEditingController();
  TextEditingController _categoryBrickContr = TextEditingController();
  TextEditingController _labelContr = TextEditingController();

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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Modifica Brick',
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
                        Center(
                          child: SizedBox(
                            width: 100,
                            height: 80,
                            child: Card(
                              color: Colors.blue.shade500,
                              child: Center(
                                child: Text(
                                  'IN',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextFormFieldCustom(
                          textEditingController: _nameBrickContr,
                          hintTextCustom: 'Nome Brick',
                          labelTextCustom: 'Nome Brick:',
                          obscure: false,
                        ),
                        TextFormFieldCustom(
                          textEditingController: _categoryBrickContr,
                          hintTextCustom: 'Categoria',
                          labelTextCustom: 'Categoria:',
                          obscure: false,
                        ),
                        TextFormFieldCustom(
                          textEditingController: _labelContr,
                          hintTextCustom: 'Label',
                          labelTextCustom: 'Label:',
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
