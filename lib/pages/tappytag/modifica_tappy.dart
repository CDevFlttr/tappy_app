import 'package:flutter/material.dart';

import '../../custom/colors.dart';
import '../../custom/menu_navigation.dart';
import '../../custom/text_form_field.dart';
import '../profilo/aggiungi_profilo.dart';
import 'aggiungi_tappy.dart';

class EditTappy extends StatefulWidget {
  const EditTappy({Key? key}) : super(key: key);

  @override
  State<EditTappy> createState() => _EditTappyState();
}

class _EditTappyState extends State<EditTappy> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameContr = TextEditingController();
  TextEditingController _profileContr = TextEditingController();

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
                          'Modifica TappyTag',
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
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('S'),
                              Text('nome'),
                              Text('slogan'),
                              Text('T'),
                            ],
                          ),
                        ),
                        TextFormFieldCustom(
                          textEditingController: _nameContr,
                          hintTextCustom: 'Nome',
                          labelTextCustom: 'Nome:',
                          obscure: false,
                          widgetIcon: Icon(Icons.person),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 200,
                              child: TextFormFieldCustom(
                                textEditingController: _profileContr,
                                hintTextCustom: 'Profilo',
                                labelTextCustom: 'Profilo:',
                                obscure: false,
                                widgetIcon: Icon(Icons.person),
                              ),
                            ),
                            SizedBox(
                              width: 35,
                              height: 35,
                              child: FloatingActionButton(
                                backgroundColor: Color(0xff00fe08),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AddProfile(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 35,
                              height: 35,
                              child: FloatingActionButton(
                                backgroundColor: Color(0xff2c66aa),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AddProfile(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 35,
                              height: 35,
                              child: FloatingActionButton(
                                backgroundColor: Color(0xfff90001),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AddProfile(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.clear,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
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
