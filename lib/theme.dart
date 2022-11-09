import 'package:agency/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.grey.shade100,
    appBarTheme: appBarTheme,
    textTheme: GoogleFonts.interTextTheme(ThemeData.light().textTheme)
        .apply(bodyColor: darkGrey),
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: Colors.red.shade600,
    ),
    inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Color(0xFFF4F4F4),
        focusColor: Color(0xFFF4F4F4),
        hoverColor: Color(0xFFF4F4F4),
        labelStyle: TextStyle(color: darkGrey),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Color.fromARGB(255, 186, 185, 185)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide:
              BorderSide(style: BorderStyle.solid, color: Color(0xFFcecece)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide:
              BorderSide(style: BorderStyle.solid, color: Color(0xFFcecece)),
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: contentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: contentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
      unselectedLabelStyle:
          const TextStyle(fontSize: 10, overflow: TextOverflow.visible),
      selectedLabelStyle:
          const TextStyle(fontSize: 10, overflow: TextOverflow.visible),
    ),
    dataTableTheme: const DataTableThemeData(
        headingTextStyle:
            TextStyle(fontWeight: FontWeight.w600, color: darkGrey)));

ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: contentColorLightTheme,
  appBarTheme: appBarTheme,
  iconTheme: IconThemeData(color: Colors.grey),
  textTheme: GoogleFonts.interTextTheme(ThemeData.light().textTheme)
      .apply(bodyColor: Colors.grey),
  colorScheme: ColorScheme.dark().copyWith(
    primary: kPrimaryColor,
    secondary: kSecondaryColor,
    error: Colors.red.shade600,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: contentColorLightTheme,
    selectedItemColor: Colors.white70,
    unselectedItemColor: Colors.grey.withOpacity(0.32),
    selectedIconTheme: IconThemeData(color: kPrimaryColor),
    showUnselectedLabels: true,
  ),
);

// ignore: prefer_const_constructors
final appBarTheme = AppBarTheme(
  backgroundColor: Colors.white,
  foregroundColor: Colors.black,
  centerTitle: false,
  elevation: 0,
);
