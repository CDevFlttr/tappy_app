import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tappy_app/pages/tappytag/aggiungi_tappy.dart';

import '../custom/colors.dart';
import '../custom/menu_navigation.dart';
import 'tappytag/modifica_tappy.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Elenco TappyTag',
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
            Text(
              'Num Tappy: 3',
              style: TextStyle(
                color: Color(0xff6abaef),
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade400,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('S'),
                  Text('S'),
                  Text('Nome'),
                  Text('TappyTag'),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      color: Colors.black,
                      size: 15,
                    ),
                    title: Text(''),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditTappy()));
                        },
                        icon: Icon(Icons.edit)),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      color: Colors.black,
                      size: 15,
                    ),
                    title: Text(''),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      color: Colors.black,
                      size: 15,
                    ),
                    title: Text(''),
                  ),
                ],
              ),
            ),
            /*StreamBuilder(
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.circle),
                          title: Text('tap'),
                        )
                      ],
                    );
                  });
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),*/
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade400,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('S'),
                  Text('S'),
                  Text('Nome'),
                  Text('TappyTag'),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Icon(
                      Icons.circle,
                      color: Colors.red,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: FloatingActionButton(
                backgroundColor: Color(0xff2c66aa),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddTappyTag(),
                    ),
                  );
                },
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
