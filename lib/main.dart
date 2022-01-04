import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whats_app_clone/Screens/Compounent/Constant.dart';
import 'package:whats_app_clone/Screens/HomeScreen/HomeScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: kDefaultColor,
    ),
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      appBarTheme: const AppBarTheme(
        color: kDefaultColor,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: kDefaultColor,
      ),
    ),
    home: HomeScreen(),
  ));
}
