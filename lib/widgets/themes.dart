// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      accentColor: Colors.blue,
      // ignore: deprecated_member_use
      buttonColor: darkBluishColor,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darColor,
      // ignore: deprecated_member_use
      accentColor: Colors.white,
      // ignore: deprecated_member_use
      buttonColor: lightBluishColor,
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          // ignore: deprecated_member_use
          textTheme: Theme.of(context).textTheme));
  //Colors
  static Color creamColor = Color.fromARGB(255, 240, 240, 240);
  static Color darColor = Vx.gray900;
  static Color darkBluishColor = Colors.blue;
  static Color lightBluishColor = Vx.indigo500;
}
