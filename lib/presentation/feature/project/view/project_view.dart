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
                                      return SizedBox(
                                        child: ReadMore(
                                          content:
                                              "${state.project.description}",
                                        ),
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

class ReadMore extends StatefulWidget {
  final String content;
  const ReadMore({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  State<ReadMore> createState() => _ReadMoreState();
}

class _ReadMoreState extends State<ReadMore> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return (widget.content.length > 300)
        ? IntrinsicHeight(
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: (isActive) ? null : 114,
                    child: Text(
                      widget.content,
                      textAlign: TextAlign.justify,
                      //overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 16, color: secondaryColorBrighter),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        isActive = !isActive;
                      }),
                      child: Icon(
                        (isActive) ? Icons.expand_less : Icons.expand_more,
                        color: secondaryColor,
                        size: 28,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        : Text(
            widget.content,
            textAlign: TextAlign.justify,
            //overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 16, color: secondaryColorBrighter),
          );
  }
}
