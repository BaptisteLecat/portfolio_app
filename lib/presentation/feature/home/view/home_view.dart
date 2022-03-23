import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/feature/home/widget/code_time_chart.dart';
import 'package:portfolio_app/presentation/feature/home/widget/github_data.dart';
import 'package:portfolio_app/presentation/feature/home/widget/mission_card.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 20, left: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flex(
                        direction: Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bonjour",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: secondaryColor),
                          ),
                          Text(
                            "Je suis Baptiste Lecat",
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: primaryColor),
                          )
                        ],
                      ),
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(12)),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Statistiques",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: secondaryColor, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CodeTimeChart(),
                          SizedBox(
                            width: 14,
                          ),
                          GithubData(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Flex(
                        direction: Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mes missions préférées",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    color: secondaryColor,
                                    fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                              child: Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                Expanded(
                                  child: Column(
                                    children: const [
                                      Expanded(child: MissionCard()),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      Expanded(child: MissionCard()),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                Expanded(
                                  child: Column(
                                    children: const [
                                      Expanded(child: MissionCard()),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      Expanded(child: MissionCard()),
                                    ],
                                  ),
                                )
                              ]))
                        ]),
                  )),
            ],
          ),
        ),
      ],
    )));
  }
}
