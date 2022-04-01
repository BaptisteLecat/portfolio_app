import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/domain/entity/technology/technology.dart';
import 'package:portfolio_app/presentation/feature/technology/bloc/technology_bloc.dart';
import 'package:portfolio_app/presentation/feature/technology/widget/technology_box.dart';

class TechnologiesView extends StatelessWidget {
  const TechnologiesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TechnologyBloc, TechnologyState>(
      builder: (context, state) {
        switch (state.status) {
          case TechnologyStatus.inProgress:
            return const Center(child: CircularProgressIndicator());
          case TechnologyStatus.failure:
            return Center(child: Text("${state.message}"));
          case TechnologyStatus.success:
            List<Technology> technologies =
                context.read<TechnologyBloc>().state.technologies;
            print(technologies);
            if (technologies.length > 0) {
              return Container(
                  child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
                padding: EdgeInsets.all(20),
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                // Generate 100 widgets that display their index in the List.
                children: List.generate(technologies.length, (index) {
                  Technology technology = technologies[index];
                  return TechnologyBox(
                    technology: technology,
                  );
                }),
              ));
            } else {
              return const Center(
                child: Text("Not enought data."),
              );
            }

          default:
            return const Center(
              child: Text("Une erreur est survenue."),
            );
        }
      },
    );
  }
}
