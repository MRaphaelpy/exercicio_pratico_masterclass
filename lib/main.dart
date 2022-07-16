import 'package:flutter/material.dart';
import 'package:project01/src/pages/login_page.dart';
import 'package:project01/src/utils/constants.dart';

void main() {
  runApp(MaterialApp(
    home: const LoginPage(),
    theme: ThemeData(
      primaryColor: Constants.primaryColor,
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(color: Constants.primaryColor),
        enabledBorder: Constants.inputBorder,
        focusedBorder: Constants.inputBorder,
        border: Constants.inputBorder,
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
