import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/feature/practice/widget/skill_card.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class PracticeView extends StatelessWidget {
  const PracticeView({Key? key}) : super(key: key);

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
                      child: Stack(
                        children: [
                          Positioned(
                              left: 0,
                              child: Container(
                                  color: secondaryColor,
                                  height: 20,
                                  width: 20)),
                          Positioned(
                              right: 0,
                              child: Container(
                                  color: secondaryColor,
                                  height: 20,
                                  width: 20)),
                          Center(
                            child: Container(
                                color: primaryColor, height: 100, width: 100),
                          )
                        ],
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
                                        SizedBox(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                      color: secondaryColor,
                                                      height: 12,
                                                      width: 60),
                                                  Container(
                                                      color: secondaryColor,
                                                      height: 12,
                                                      width: 60),
                                                  Container(
                                                      color: secondaryColor,
                                                      height: 12,
                                                      width: 60),
                                                ]),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Expanded(
                                            flex: 3,
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
                                                  height: 12,
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
                                                height: 86,
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
