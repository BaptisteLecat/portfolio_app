import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/presentation/feature/technology/bloc/technology_bloc.dart';
import 'package:portfolio_app/presentation/feature/technology/view/technologies_view.dart';

class TechnologiesScreen extends StatelessWidget {
  const TechnologiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TechnologyBloc()..add(TechnologyFetchAll()),
      child: TechnologiesView(),
    );
  }
}
