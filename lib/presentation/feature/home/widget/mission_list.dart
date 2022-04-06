import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/feature/home/widget/mission_card.dart';
import 'package:portfolio_app/presentation/feature/home/widget/project_card.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class MissionList extends StatelessWidget {
  const MissionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Missions",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: secondaryColor, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 74,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return MissionCard();
                })),
          )
        ]);
  }
}
