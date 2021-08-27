import 'package:flutter/material.dart';
import 'package:karma/screens/drive_page.dart';
import 'package:karma/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Karma',
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
        primaryColor: Colors.orange,
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        LoginPage.routeName : (ctx) => LoginPage(),
        DrivePage.routeName: (ctx) => DrivePage(),
      },
    );
  }
}
