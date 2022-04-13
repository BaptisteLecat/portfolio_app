import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/presentation/feature/project/bloc/project_bloc.dart';
import 'package:portfolio_app/presentation/feature/project/widget/project_info_card.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    SizedBox(
                      height: 320,
                      child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: BlocBuilder<ProjectBloc, ProjectState>(
                              builder: (context, state) {
                                switch (state.status) {
                                  case ProjectStatus.success:
                                  case ProjectStatus.select:
                                    return BlocBuilder<ProjectBloc,
                                        ProjectState>(
                                      buildWhen: ((previous, current) =>
                                          previous.project != current.project),
                                      builder: (context, state) {
                                        switch (state.status) {
                                          case ProjectStatus.success:
                                          case ProjectStatus.select:
                                            return Image.network(
                                              "${state.project.picture}",
                                              fit: BoxFit.fill,
                                              errorBuilder: ((context, error,
                                                      stackTrace) =>
                                                  Container(
                                                    color: primaryColor,
                                                  )),
                                            );
                                          case ProjectStatus.failure:
                                            return Container(
                                              color: primaryColor,
                                              child: Center(
                                                child: Text(
                                                    "Une erreur est survenue"),
                                              ),
                                            );
                                          default:
                                            return Container(
                                              color: primaryColor,
                                              child: Center(
                                                  child:
                                                      CircularProgressIndicator()),
                                            );
                                        }
                                      },
                                    );
                                  case ProjectStatus.failure:
                                    return Center(
                                      child: Text("Une erreur est survenue"),
                                    );
                                  default:
                                    return Center(
                                        child: CircularProgressIndicator());
                                }
                              },
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              BlocBuilder<ProjectBloc, ProjectState>(
                                buildWhen: ((previous, current) =>
                                    previous.project != current.project),
                                builder: (context, state) {
                                  switch (state.status) {
                                    case ProjectStatus.success:
                                    case ProjectStatus.select:
                                      return Text(
                                        "${state.project.name}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .copyWith(color: primaryColor),
                                      );
                                    case ProjectStatus.failure:
                                      return Center(
                                        child: Text("Une erreur est survenue"),
                                      );
                                    default:
                                      return Center(
                                          child: CircularProgressIndicator());
                                  }
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              BlocBuilder<ProjectBloc, ProjectState>(
                                buildWhen: ((previous, current) =>
                                    previous.project != current.project),
                                builder: (context, state) {
                                  switch (state.status) {
                                    case ProjectStatus.success:
                                    case ProjectStatus.select:
                                      return Text(
                                        "${state.project.description}",
                                        textAlign: TextAlign.justify,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                fontSize: 16,
                                                color: secondaryColorBrighter),
                                      );
                                    case ProjectStatus.failure:
                                      return Center(
                                        child: Text("Une erreur est survenue"),
                                      );
                                    default:
                                      return Center(
                                          child: CircularProgressIndicator());
                                  }
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  ProjectInfoCard(),
                                  ProjectInfoCard(),
                                ],
                              )
                            ]),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
