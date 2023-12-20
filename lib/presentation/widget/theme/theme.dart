import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: TextStyle(
          fontFamily: 'Lato',
          color: secondaryColor,
          fontSize: 30,
          fontWeight: FontWeight.bold),
      headline2: TextStyle(
        fontFamily: 'Lato',
        fontSize: 26.0,
        fontWeight: FontWeight.w600,
        color: secondaryColor,
      ),
      headline3: TextStyle(
        fontFamily: 'Lato',
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: secondaryColor,
      ),
      headline4: TextStyle(
        fontFamily: 'Lato',
        fontSize: 22.0,
        color: secondaryColorBrighter,
      ),
      headline5: TextStyle(
        fontFamily: 'Lato',
        fontSize: 20.0,
        color: secondaryColorBrighter,
      ),
      headline6: TextStyle(
          fontFamily: 'Lato',
          fontSize: 16,
          color: secondaryColorBrighter,
          fontWeight: FontWeight.w400),
      subtitle1: TextStyle(
          fontFamily: 'Lato',
          fontSize: 18,
          color: secondaryColorBrighter,
          fontWeight: FontWeight.w400),
      bodyText1: TextStyle(
        fontFamily: 'Lato',
        fontSize: 15.0,
        color: secondaryColorBrighter,
      ),
      bodyText2: TextStyle(
        fontFamily: 'Lato',
        fontSize: 13.0,
        color: secondaryColorBrighter,
      ),
      button: TextStyle(
        fontFamily: 'Lato',
        fontSize: 16.0,
        color: primaryColor,
      ),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
      textTheme: _basicTextTheme(base.textTheme),
      //textTheme: Typography().white,
      primaryColor: primaryColor,
      primaryColorDark: Colors.white,
      appBarTheme: AppBarTheme(backgroundColor: primaryColor),
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: primaryColor, selectionColor: primaryColor),
      cardColor: secondaryColor,
      //primaryColor: Color(0xff4829b2),
      indicatorColor: Color(0xFF807A6B),
      scaffoldBackgroundColor: backgroundColor,
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 20.0,
      ),
      backgroundColor: secondaryColor,
      tabBarTheme: base.tabBarTheme.copyWith(
        labelColor: Color(0xffce107c),
        unselectedLabelColor: Colors.grey,
      ));
}
