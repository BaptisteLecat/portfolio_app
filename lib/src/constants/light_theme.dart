import 'package:flutter/material.dart';

ThemeData lightTheme(context) {
  return ThemeData(
    // fontFamily: GoogleFonts.manrope().fontFamily,
    fontFamily: "MonaSans",
    brightness: Brightness.light,
    unselectedWidgetColor: Colors.grey,
    appBarTheme: const AppBarTheme(
      elevation: 2.0,
      centerTitle: true,
      backgroundColor: Colors.white,
    ),
    primaryColor: const Color(0xFF85C1A3),
    //scaffoldBackgroundColor: Colors.white,
    // scaffoldBackgroundColor: Color.fromARGB(255, 241, 241, 241),
    scaffoldBackgroundColor: Colors.white,
    cardColor: Color(0xFF232323),
    dividerColor: Color(0xFF1C1C1C),
    listTileTheme: const ListTileThemeData(
      tileColor: Color(0xFFfffbfe),
    ),
    // https://github.com/firebase/flutterfire/blob/master/packages/firebase_ui_auth/doc/theming.md
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).dividerColor.withOpacity(0.7),
          ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Theme.of(context).dividerColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        borderSide:
            BorderSide(width: 1.2, color: Theme.of(context).dividerColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        borderSide:
            BorderSide(color: Theme.of(context).dividerColor, width: 2.0),
      ),
      errorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: Color(0xFFEA5B5B),
        ),
      ),
    ),
  );
}
