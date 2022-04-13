import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class ProjectCard extends StatelessWidget {
  final String? name;
  final String? picture;
  const ProjectCard({
    Key? key,
    required this.name,
    required this.picture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14),
      height: 220,
      width: 180,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 5,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  child: Image.network(
                    "$picture",
                    errorBuilder: ((context, error, stackTrace) => Container(
                          color: primaryColor,
                        )),
                  )),
            ),
            Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("28 Nov - 16 Dec",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: secondaryColorBrighter)),
                      Text("$name",
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: secondaryColor)),
                      Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Icon(Icons.punch_clock,
                                    color: secondaryColor)),
                            Expanded(
                              flex: 2,
                              child: Text("Windle",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(color: primaryColor)),
                            ),
                            Expanded(flex: 2, child: Container())
                          ])
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
