import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class PracticesView extends StatelessWidget {
  const PracticesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Experiences professionnelles",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: secondaryColor, fontWeight: FontWeight.w600),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: ((context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            height: 90,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      secondaryColorBrighter.withOpacity(0.2),
                                  width: 1),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: primaryColor)),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Alternance - Flutter / Symfony",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(
                                              color: secondaryColor,
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Septembre 2021 -  Septembre 2022",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                              color: secondaryColorBrighter),
                                    ),
                                  ],
                                ),
                              )
                            ]),
                          );
                        })),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Projets personnels",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: secondaryColor),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: ((context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            height: 100,
                            color: lightBackgroundColor,
                            child: Row(children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 18.0, left: 18, right: 18),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: secondaryColor)),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Alternance - Flutter / Symfony",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6!
                                            .copyWith(color: primaryColor),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Septembre 2021 -  Septembre 2022",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2!
                                            .copyWith(color: secondaryColor),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 2,
                                          itemBuilder: ((context, index) {
                                            return Container(
                                              decoration: BoxDecoration(
                                                  color: secondaryColorBrighter,
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 4),
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 6,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Symfony",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!
                                                      .copyWith(
                                                          color: Colors.white),
                                                ),
                                              ),
                                            );
                                          })),
                                    )
                                  ],
                                ),
                              )
                            ]),
                          );
                        })),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
