import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/src/constants/dark_theme.dart';
import 'package:portfolio_app/src/constants/light_theme.dart';
import 'package:portfolio_app/src/routing/app_router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    precacheImage(
        Image.asset(
          "assets/images/baptiste_debout.png",
          fit: BoxFit.fitHeight,
        ).image,
        context);
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      debugShowCheckedModeBanner: false,
    );
  }
}
