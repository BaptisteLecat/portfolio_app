import 'package:flutter/material.dart';

ThemeData darkTheme(context) {
  return ThemeData(
    fontFamily: "MonaSans",
    brightness: Brightness.dark,
    unselectedWidgetColor: Colors.grey,
    appBarTheme: const AppBarTheme(
      elevation: 2.0,
      centerTitle: true,
      backgroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: const Color.fromARGB(255, 172, 174, 178),
    ),
    primaryColor: const Color(0xFF40A083),
    secondaryHeaderColor: const Color(0xFF7CCBB3),
    //scaffoldBackgroundColor: Colors.white,
    // scaffoldBackgroundColor: Color.fromARGB(255, 241, 241, 241),
    scaffoldBackgroundColor: Color(0xFF111111),
    cardColor: Colors.white,
    listTileTheme: const ListTileThemeData(
      tileColor: Color(0xFFff1c1b1f),
    ),
    dividerColor: Colors.white,
    // https://github.com/firebase/flutterfire/blob/master/packages/firebase_ui_auth/doc/theming.md
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Color.fromARGB(255, 244, 243, 243),
      filled: true,
      hintStyle: TextStyle(color: Color(0xFFB8B5C3)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Color(0xFF3F51B5), width: 2.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: Color(0xFFEA5B5B),
        ),
      ),
    ),
  );
}
