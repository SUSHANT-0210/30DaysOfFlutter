import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData get themeData => ThemeData(
        primarySwatch: Colors.green, 
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation : 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle :  TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)
          ));
  
  static ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
        );
  
}