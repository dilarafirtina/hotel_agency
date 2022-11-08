import 'package:agency/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: Colors.grey.shade100,
  appBarTheme: appBarTheme,
  textTheme: GoogleFonts.interTextTheme(ThemeData.light().textTheme),
  colorScheme: ColorScheme.light(
    primary: kPrimaryColor,
    secondary: kSecondaryColor,
    error: Colors.red.shade600,
  ),
  // bottomNavigationBarTheme: BottomNavigationBarThemeData(
  //   backgroundColor: Colors.white,
  //   selectedItemColor: contentColorLightTheme.withOpacity(0.7),
  //   unselectedItemColor: contentColorLightTheme.withOpacity(0.32),
  //   selectedIconTheme: const IconThemeData(color: kPrimaryColor),
  //   showUnselectedLabels: true,
  // ),
);

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

final appBarTheme = AppBarTheme(
    centerTitle: false, elevation: 0, backgroundColor: Colors.white);
