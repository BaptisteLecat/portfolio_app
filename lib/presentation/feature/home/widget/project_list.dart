import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/presentation/feature/home/widget/project_card.dart';
import 'package:portfolio_app/presentation/feature/project/bloc/project_bloc.dart';
import 'package:portfolio_app/presentation/feature/project/screen/project_screen.dart';
import 'package:portfolio_app/presentation/widget/shimmer/shimmer_export.dart';
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
            height: 230,
            child: BlocBuilder<ProjectBloc, ProjectState>(
              buildWhen: ((previous, current) =>
                  previous.projects != current.projects &&
                  !(previous.status == ProjectStatus.select &&
                      current.status == ProjectStatus.initial)),
              builder: (context, state) {
                switch (state.status) {
                  case ProjectStatus.success:
                  case ProjectStatus.initial:
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.projects.length,
                      itemBuilder: ((context, index) {
                        Project project = state.projects[index];
                        return GestureDetector(
                            onTap: (() {
                              context
                                  .read<ProjectBloc>()
                                  .add(ProjectSelect(project: project));
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProjectScreen(),
                                  )).then((value) {
                                context.read<ProjectBloc>().add(ProjectReset());
                              });
                            }),
                            child: ProjectCard(
                              name: project.name,
                              picture: project.picture,
                              start: project.start,
                              end: project.end,
                              company: project.company,
                              school: project.school,
                            ));
                      }),
                    );
                  case ProjectStatus.failure:
                    return const Center(
                      child: Text("Une erreur est survenue"),
                    );
                  default:
                    return const ShimmerList(
                        customShimmer: CustomShimmer(
                          height: 230,
                          width: 180,
                          margin: EdgeInsets.symmetric(horizontal: 14.0),
                        ),
                        itemCount: 12);
                }
              },
            ),
          )
        ]);
  }
}
