import 'package:flutter/material.dart';
import 'package:tappy_app/main.dart';
import 'package:tappy_app/pages/auth/cambio_password.dart';

import '../pages/profilo/lista_profili.dart';
import '../pages/auth/login.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SizedBox(
              width: 200,
              height: 100,
              child: DrawerHeader(
                child: Image.asset(
                  'assets/logo.png',
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Profili',
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListProfiles(),
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'Cambio Password',
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChangePasswordPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'Logout',
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
