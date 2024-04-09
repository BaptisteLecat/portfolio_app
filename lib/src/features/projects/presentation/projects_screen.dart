import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_app/src/mock/project_mock.dart';
import 'package:portfolio_app/src/routing/app_router.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List<String>.generate(10, (i) => 'Item $i');
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Creations Showcase',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                      'A concise tour of my handcrafted applications, reflecting my versatility and passion in tackling challenges across various development landscapes.',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                          )),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            SliverAppBar(
              collapsedHeight: 100,
              expandedHeight: 100,
              pinned: true,
              floating: true,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                          itemCount: mockedProjectCategories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  color: index == 0
                                      ? Theme.of(context).dividerColor
                                      : null,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Theme.of(context)
                                        .dividerColor
                                        .withOpacity(0.3),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 4),
                                child: Center(
                                  child: Text(
                                    mockedProjectCategories[index].name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                          color: index == 0
                                              ? Theme.of(context)
                                                  .scaffoldBackgroundColor
                                              : null,
                                          fontWeight: index == 0
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            SliverList.builder(
                itemCount: mockedProjects.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.push(
                          "${AppRoute.projects.route}/${mockedProjects[index].id}");
                    },
                    child: Container(
                      margin: (index == items.length - 1)
                          ? const EdgeInsets.only(bottom: 110)
                          : const EdgeInsets.only(bottom: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 220,
                            decoration: BoxDecoration(
                              color: index % 2 == 0
                                  ? Theme.of(context).dividerColor
                                  : Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                mockedProjects[index].assetImages.first,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  mockedProjects[index].name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  mockedProjects[index].description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 120,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
