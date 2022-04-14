import 'package:flutter/material.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/presentation/feature/practice/widget/skill_card.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class CourseView extends StatelessWidget {
  final Course course;
  const CourseView({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back, color: secondaryColor)),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  SizedBox(
                    height: 340,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 14.0, left: 14, right: 14),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            course.picture!,
                            fit: BoxFit.fill,
                            errorBuilder: ((context, error, stackTrace) =>
                                Container(
                                  color: primaryColor,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, -4),
                              blurRadius: 8,
                              spreadRadius: 2,
                            ),
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(26),
                            topRight: Radius.circular(26),
                          )),
                      child: Flex(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          direction: Axis.vertical,
                          children: [
                            Container(
                              height: 4,
                              width: 54,
                              margin: EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: secondaryColorLessOpacity
                                      .withOpacity(0.8)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${course.school!.name} - ${course.location!.label}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                          ),
                                          Text(
                                            "${course.title}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    color: secondaryColor,
                                                    fontWeight:
                                                        FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            child: Flex(
                                              direction: Axis.horizontal,
                                              children: [
                                                const SizedBox(
                                                  height: 20,
                                                  child: Image(
                                                      image: AssetImage(
                                                          "assets/icons/location.png")),
                                                ),
                                                const SizedBox(width: 6),
                                                Text(
                                                  "${course.location!.label}",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline6!
                                                      .copyWith(
                                                          color:
                                                              secondaryColorBrighter),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Flex(
                                              direction: Axis.horizontal,
                                              children: [
                                                const SizedBox(
                                                  height: 20,
                                                  child: Image(
                                                      image: AssetImage(
                                                          "assets/icons/rocket.png")),
                                                ),
                                                const SizedBox(width: 6),
                                                Text(
                                                  "${course.time}",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline6!
                                                      .copyWith(
                                                          color:
                                                              secondaryColorBrighter),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Flex(
                                              direction: Axis.horizontal,
                                              children: [
                                                const SizedBox(
                                                  height: 20,
                                                  child: Image(
                                                      image: AssetImage(
                                                          "assets/icons/school-bag.png")),
                                                ),
                                                const SizedBox(width: 6),
                                                Text(
                                                  "${course.school!.name}",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline6!
                                                      .copyWith(
                                                          color:
                                                              secondaryColorBrighter),
                                                )
                                              ],
                                            ),
                                          ),
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Description",
                                          textAlign: TextAlign.justify,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5!
                                              .copyWith(color: secondaryColor)),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "${course.description}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: secondaryColorBrighter),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 14),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Technologies",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5!
                                              .copyWith(color: secondaryColor)),
                                      SizedBox(
                                        height: 136,
                                        child: ListView.builder(
                                            itemCount: 5,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: ((context, index) {
                                              return const SkillCard();
                                            })),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
