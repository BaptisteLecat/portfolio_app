import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/bloc/bloc/landing_screen_bloc.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/view/landing_view.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LandingView();
  }
}
