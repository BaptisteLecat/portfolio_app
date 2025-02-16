import 'package:carousel_slider/carousel_slider.dart' as carousel;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_app/src/features/projects/domain/entities/project.dart';
import 'package:portfolio_app/src/mock/project_mock.dart';

class ProjectScreen extends StatefulWidget {
  final int projectId;
  const ProjectScreen({
    super.key,
    required this.projectId,
  });

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  late Project project;

  @override
  void initState() {
    project =
        mockedProjects.firstWhere((element) => element.id == widget.projectId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Theme.of(context).brightness == Brightness.dark
            ? IconButton(
                icon: Icon(
                  Icons.chevron_left,
                  size: 36,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            : null,
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                      color: project.color,
                      width: double.infinity,
                      child: carousel.CarouselSlider(
                        options: carousel.CarouselOptions(
                          autoPlay: true,
                          viewportFraction: 1,
                          aspectRatio: 1,
                        ),
                        items: project.assetImages.map((i) {
                          return Image.asset(
                            i,
                            fit: BoxFit.cover,
                          );
                        }).toList(),
                      ))),
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: CustomScrollView(
                      slivers: [
                        SliverAppBar(
                          expandedHeight: 120,
                          collapsedHeight: 120,
                          pinned: true,
                          floating: true,
                          surfaceTintColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          automaticallyImplyLeading: false,
                          flexibleSpace: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                project.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                project.workType,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(fontStyle: FontStyle.italic),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color:
                                              Theme.of(context).dividerColor),
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30.0, vertical: 11.0),
                                          child: Text("Get Started",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      color: Theme.of(context)
                                                          .scaffoldBackgroundColor)))),
                                  Container(
                                      margin: const EdgeInsets.only(left: 8),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border: Border.all(
                                              width: 1.5,
                                              color: Theme.of(context)
                                                  .dividerColor)),
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15.0, vertical: 10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.play_arrow_rounded,
                                                  color: Theme.of(context)
                                                      .dividerColor),
                                              const SizedBox(width: 4),
                                              Text("Watch a Demo",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium!
                                                      .copyWith(
                                                          color: Theme.of(
                                                                  context)
                                                              .dividerColor)),
                                            ],
                                          ))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SliverList(
                            delegate: SliverChildListDelegate([
                          const SizedBox(height: 20),
                          Text('Features',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: 94,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: project.features.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 174,
                                  margin: const EdgeInsets.only(right: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 1.5,
                                        color: Theme.of(context)
                                            .dividerColor
                                            .withOpacity(0.2)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.child_care),
                                        Text(project.features[index].name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium)
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text('About',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          Text(
                            project.description,
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 110),
                        ])),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
