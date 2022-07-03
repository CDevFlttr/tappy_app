import 'package:flutter/material.dart';

import '../../custom/colors.dart';
import '../../custom/menu_navigation.dart';

class AddBrickPage extends StatefulWidget {
  const AddBrickPage({Key? key}) : super(key: key);

  @override
  State<AddBrickPage> createState() => _AddBrickPageState();
}

class _AddBrickPageState extends State<AddBrickPage> {
  final _formKey = GlobalKey<FormState>();
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
                          'Aggiungi Brick',
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
                        Row(
                          children: [
                            Flexible(
                              child: SizedBox(
                                width: 80,
                                height: 60,
                                child: Card(
                                  color: Colors.grey.shade400,
                                  child: Center(
                                    child: Text(
                                      'BRK',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: SizedBox(
                                width: 80,
                                height: 60,
                                child: Card(
                                  color: Colors.grey.shade400,
                                  child: Center(
                                    child: Text(
                                      'BRK',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: SizedBox(
                                width: 80,
                                height: 60,
                                child: Card(
                                  color: Colors.grey.shade400,
                                  child: Center(
                                    child: Text(
                                      'BRK',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: SizedBox(
                                width: 80,
                                height: 60,
                                child: Card(
                                  color: Colors.grey.shade400,
                                  child: Center(
                                    child: Text(
                                      'BRK',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: SizedBox(
                                width: 80,
                                height: 60,
                                child: Card(
                                  color: Colors.grey.shade400,
                                  child: Center(
                                    child: Text(
                                      'BRK',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: SizedBox(
                                width: 80,
                                height: 60,
                                child: Card(
                                  color: Colors.grey.shade400,
                                  child: Center(
                                    child: Text(
                                      'BRK',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: SizedBox(
                                width: 80,
                                height: 60,
                                child: Card(
                                  color: Colors.grey.shade400,
                                  child: Center(
                                    child: Text(
                                      'BRK',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: SizedBox(
                                width: 80,
                                height: 60,
                                child: Card(
                                  color: Colors.grey.shade400,
                                  child: Center(
                                    child: Text(
                                      'BRK',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
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
