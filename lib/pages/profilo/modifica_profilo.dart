import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tappy_app/pages/brick/aggiungi_brick.dart';
import 'package:tappy_app/utils/show_snackbar.dart';

import '../../custom/colors.dart';
import '../../custom/menu_navigation.dart';
import '../../custom/text_form_field.dart';
import 'aggiungi_profilo.dart';
import '../brick/modifica_brick.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameProfileContr = TextEditingController();
  TextEditingController _titleContr = TextEditingController();
  TextEditingController _subTitleContr = TextEditingController();
  TextEditingController _intro = TextEditingController();
  File? image;

  Future pickImage(ImageSource sourcePick) async {
    try {
      final imagePick = await ImagePicker().pickImage(
        source: sourcePick,
      );

      if (imagePick == null) return;

      final imageTemporary = File(imagePick.path);
      setState(() {
        image = imageTemporary;
      });
    } on PlatformException catch (e) {
      UtilsSnack.showSnackBar('$e', context);
    }
  }

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
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Modifica Profilo',
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
                  child: Text(
                    'T',
                  ),
                ),
                TextFormFieldCustom(
                  textEditingController: _nameProfileContr,
                  hintTextCustom: 'Nome Profilo',
                  labelTextCustom: 'Nome Profilo:',
                  obscure: false,
                ),
                TextFormFieldCustom(
                  textEditingController: _titleContr,
                  hintTextCustom: 'Titolo',
                  labelTextCustom: 'Titolo:',
                  obscure: false,
                ),
                TextFormFieldCustom(
                  textEditingController: _subTitleContr,
                  hintTextCustom: 'Sottotitolo',
                  labelTextCustom: 'Sottotitolo:',
                  obscure: false,
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: image != null
                            ? Image.file(
                                image!,
                                fit: BoxFit.cover,
                              )
                            : Image.asset('assets/logo.png'),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Prendi una immagine'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      pickImage(ImageSource.gallery);
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Galleria"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      pickImage(ImageSource.camera);
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Camera"),
                                  ),
                                ],
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.edit,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TextFormFieldCustom(
                  textEditingController: _intro,
                  hintTextCustom: 'Intro',
                  labelTextCustom: 'Intro:',
                  obscure: false,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.grey,
                  )),
                  child: Column(
                    children: [
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: SizedBox(
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
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: SizedBox(
                                width: 35,
                                height: 35,
                                child: FloatingActionButton(
                                  backgroundColor: Color(0xff2c66aa),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AddBrickPage(),
                                      ),
                                    );
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: SizedBox(
                                width: 35,
                                height: 35,
                                child: FloatingActionButton(
                                  backgroundColor: Color(0xfff90001),
                                  onPressed: null,
                                  child: Icon(
                                    Icons.clear,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: SizedBox(
                                width: 35,
                                height: 35,
                                child: FloatingActionButton(
                                  backgroundColor: Colors.yellow,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => EditBrickPage(),
                                      ),
                                    );
                                  },
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.black,
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
                Padding(
                  padding: const EdgeInsets.all(25.0),
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
        ),
      ),
    );
  }
}
