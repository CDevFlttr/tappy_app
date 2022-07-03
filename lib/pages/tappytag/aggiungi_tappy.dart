import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom/menu_navigation.dart';
import '../auth/load_codice.dart';

class AddTappyTag extends StatefulWidget {
  const AddTappyTag({Key? key}) : super(key: key);

  @override
  State<AddTappyTag> createState() => _AddTappyTagState();
}

class _AddTappyTagState extends State<AddTappyTag> {
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
        padding: const EdgeInsets.all(30.0),
        child: Stack(
          children: [
            Text('Avvicina il Tappy al telefono ed attendi la lettura'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CodeLoad(),
                      ),
                    );
                  },
                  child: SizedBox(
                    child: Image.asset(
                      'assets/nfc_image.png',
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
