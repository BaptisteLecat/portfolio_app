import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/feature/home/widget/project_card.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({
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
              "Projets",
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
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: ((context, index) {
                return ProjectCard();
              }),
            ),
          )
        ]);
  }
}
