import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/feature/practice/widget/skill_card.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class CourseView extends StatelessWidget {
  const CourseView({Key? key}) : super(key: key);

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
                  Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 0,
                                child: GestureDetector(
                                  onTap: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: secondaryColorBrighter
                                                .withOpacity(0.2),
                                            width: 1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.arrow_back,
                                          color: secondaryColor),
                                      height: 36,
                                      width: 36),
                                )),
                            Center(
                              child: Container(
                                  color: primaryColor, height: 100, width: 100),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 5,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
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
                              Expanded(
                                  flex: 6,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                  "Windle - St-Herblain",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2,
                                                ),
                                                Text(
                                                  "Alternant Développeur Flutter / Symfony",
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
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    child: Flex(
                                                      direction:
                                                          Axis.horizontal,
                                                      children: [
                                                        const SizedBox(
                                                          height: 20,
                                                          child: Image(
                                                              image: AssetImage(
                                                                  "assets/icons/location.png")),
                                                        ),
                                                        const SizedBox(
                                                            width: 6),
                                                        Text(
                                                          "St-Herblain",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .headline6,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Flex(
                                                      direction:
                                                          Axis.horizontal,
                                                      children: [
                                                        const SizedBox(
                                                          height: 20,
                                                          child: Image(
                                                              image: AssetImage(
                                                                  "assets/icons/rocket.png")),
                                                        ),
                                                        const SizedBox(
                                                            width: 6),
                                                        Text(
                                                          "1 ans",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .headline6,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Flex(
                                                      direction:
                                                          Axis.horizontal,
                                                      children: [
                                                        const SizedBox(
                                                          height: 20,
                                                          child: Image(
                                                              image: AssetImage(
                                                                  "assets/icons/school-bag.png")),
                                                        ),
                                                        const SizedBox(
                                                            width: 6),
                                                        Text(
                                                          "EPSI",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .headline6,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Description",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline5!
                                                        .copyWith(
                                                            color:
                                                                secondaryColor)),
                                                SizedBox(
                                                  height: 6,
                                                ),
                                                Text(
                                                  "Je suis chargé du développement de l'application Windle : un assistant de dimensionnement dédié au chauffagiste.",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1,
                                                )
                                              ],
                                            )),
                                        Expanded(
                                          flex: 4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text("Technologies",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline5!
                                                      .copyWith(
                                                          color:
                                                              secondaryColor)),
                                              SizedBox(
                                                height: 136,
                                                child: ListView.builder(
                                                    itemCount: 5,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemBuilder:
                                                        ((context, index) {
                                                      return const SkillCard();
                                                    })),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ))
                            ]),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
