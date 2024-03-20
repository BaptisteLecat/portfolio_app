import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  final CarouselController _carouselController = CarouselController();
  final List<Widget> _ = [
    Image.asset("assets/images/projects/constellation/image1.png"),
    Image.asset("assets/images/projects/constellation/image1.png"),
    Image.asset("assets/images/projects/constellation/image1.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      child: CarouselSlider(
                        carouselController: _carouselController,
                        options:
                            CarouselOptions(autoPlay: true, aspectRatio: 1),
                        items: _.map((i) {
                          return i;
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
                          expandedHeight: 160,
                          collapsedHeight: 160,
                          pinned: true,
                          floating: true,
                          surfaceTintColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          automaticallyImplyLeading: false,
                          flexibleSpace: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mobile app for the Constellation association",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'Volunteer',
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
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 94,
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
                                        Text("Feature 1qsdfqsdqsd",
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
                            "This is a mobile app for the Constellation association. It is a non-profit organization that aims to help people with disabilities. The app is used to help the association's members to communicate with each other and to organize events.",
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
