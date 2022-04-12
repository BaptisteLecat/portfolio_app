import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/presentation/feature/home/bloc/wakatime_bloc.dart';
import 'package:portfolio_app/presentation/feature/home/view/home_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WakatimeBloc()..add(WakatimeFetchDaily()),
      child: HomeView(),
    );
  }
}
