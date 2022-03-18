import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold),
      headline2: TextStyle(
        fontFamily: 'Lato',
        fontSize: 26.0,
        color: Colors.white,
      ),
      headline3: TextStyle(
        fontFamily: 'Lato',
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      headline4: TextStyle(
        fontFamily: 'Lato',
        fontSize: 22.0,
        color: Colors.white,
      ),
      headline5: TextStyle(
        fontFamily: 'Lato',
        fontSize: 20.0,
        color: Colors.white,
      ),
      headline6: TextStyle(
          fontFamily: 'Lato',
          fontSize: 16,
          color: secondaryColorLessOpacity,
          fontWeight: FontWeight.w400),
      subtitle1: TextStyle(
          fontFamily: 'Lato',
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w400),
      bodyText1: TextStyle(
        fontFamily: 'Lato',
        fontSize: 15.0,
        color: bodyTextColor,
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
      accentColor: Color(0xFFFFF8E1),
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 20.0,
      ),
      buttonColor: Colors.white,
      backgroundColor: secondaryColor,
      tabBarTheme: base.tabBarTheme.copyWith(
        labelColor: Color(0xffce107c),
        unselectedLabelColor: Colors.grey,
      ));
}
