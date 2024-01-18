import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/src/routing/app_router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        primarySwatch: MaterialColor(0xFFE1FC4B, {
          50: Color(0xFFE1FC4B),
          100: Color(0xFFE1FC4B),
          200: Color(0xFFE1FC4B),
          300: Color(0xFFE1FC4B),
          400: Color(0xFFE1FC4B),
          500: Color(0xFFE1FC4B),
          600: Color(0xFFE1FC4B),
          700: Color(0xFFE1FC4B),
          800: Color(0xFFE1FC4B),
          900: Color(0xFFE1FC4B),
        }),
        unselectedWidgetColor: Colors.grey,
        appBarTheme: const AppBarTheme(
          elevation: 2.0,
          centerTitle: true,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: const Color.fromARGB(255, 172, 174, 178),
        ),
        primaryColor: const Color(0xFFE1FC4B),
        //scaffoldBackgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        dividerColor: Colors.grey[400],
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
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
