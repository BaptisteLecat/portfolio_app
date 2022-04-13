import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/presentation/feature/home/widget/project_card.dart';
import 'package:portfolio_app/presentation/feature/project/bloc/project_bloc.dart';
import 'package:portfolio_app/presentation/feature/project/screen/project_screen.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Projets",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: secondaryColor, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 220,
            child: BlocBuilder<ProjectBloc, ProjectState>(
              buildWhen: ((previous, current) =>
                  previous.projects != current.projects),
              builder: (context, state) {
                switch (state.status) {
                  case ProjectStatus.success:
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.projects.length,
                      itemBuilder: ((context, index) {
                        Project project = state.projects[index];
                        return GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProjectScreen(),
                                  ));
                            }),
                            child: ProjectCard(
                                name: project.name, picture: project.picture));
                      }),
                    );
                  case ProjectStatus.failure:
                    return const Center(
                      child: Text("Une erreur est survenue"),
                    );
                  default:
                    return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          )
        ]);
  }
}
