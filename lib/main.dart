import 'package:flutter/material.dart';
import 'package:tappy_app/pages/auth/login.dart';
import 'package:provider/provider.dart';
import 'package:tappy_app/service/api/auth/login_user_api.dart';
import 'package:tappy_app/service/api/auth/refresh_token.dart';
import 'package:tappy_app/service/api/newUsers/request_new_key_api.dart';
import 'package:tappy_app/service/api/users/change_password.dart';
import 'package:tappy_app/service/api/users/data_account.dart';
import 'package:tappy_app/service/api/users/reset_password.dart';
import 'package:tappy_app/service/api/users/update_data_account.dart';
import 'service/providers.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
}

final messengerKey = GlobalKey<ScaffoldMessengerState>();
final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LoginUserApi(),
        ),
        ChangeNotifierProvider(
          create: (_) => LogoutUserApi(),
        ),
        ChangeNotifierProvider(
          create: (_) => RefreshToken(),
        ),
        ChangeNotifierProvider(
          create: (_) => ActiveKeyApi(),
        ),
        ChangeNotifierProvider(
          create: (_) => RegisterUserApi(),
        ),
        ChangeNotifierProvider(
          create: (_) => RequestNewKeyApi(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChangePassword(),
        ),
        ChangeNotifierProvider(
          create: (_) => GetDataAccount(),
        ),
        ChangeNotifierProvider(
          create: (_) => ResetPassword(),
        ),
        ChangeNotifierProvider(
          create: (_) => UpdateDataAccount(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: messengerKey,
        navigatorKey: navigatorKey,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int splashTime = 3;

  @override
  void initState() {
    Future.delayed(
        Duration(
          seconds: splashTime,
        ), () async {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 100,
              ),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo.png"),
                ),
              ),
            ),
            Container(
              child: CircularProgressIndicator(),
            ),
            Text(
              '(c) 2022',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
