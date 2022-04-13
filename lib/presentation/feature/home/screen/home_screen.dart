import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/presentation/feature/home/bloc/wakatime_bloc.dart';
import 'package:portfolio_app/presentation/feature/home/view/home_view.dart';
import 'package:portfolio_app/presentation/feature/mission/bloc/mission_bloc.dart';
import 'package:portfolio_app/presentation/feature/project/bloc/project_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<MissionBloc>().add(MissionFetchAll());
    context.read<ProjectBloc>().add(ProjectFetchAll());
    return BlocProvider(
      create: (context) => WakatimeBloc()..add(WakatimeFetchDaily()),
      child: const HomeView(),
    );
  }
}
