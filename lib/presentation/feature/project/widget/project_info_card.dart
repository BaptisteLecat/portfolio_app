import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class ProjectInfoCard extends StatefulWidget {
  const ProjectInfoCard({Key? key}) : super(key: key);

  @override
  State<ProjectInfoCard> createState() => _ProjectInfoCardState();
}

class _ProjectInfoCardState extends State<ProjectInfoCard> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: (() {
          setState(() {
            isActive = !isActive;
          });
        }),
        child: IntrinsicHeight(
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SizedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                              child: Container(
                                  height: 40,
                                  decoration: const BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle),
                                  child: const Center(
                                    child: Icon(Icons.travel_explore, size: 28),
                                  ))),
                          Expanded(
                            flex: 4,
                            child: Flex(
                              direction: Axis.vertical,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Idée du projet",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                          color: secondaryColor,
                                          fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Quels sont les motivations de ce projet?",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        color: secondaryColorBrighter,
                                      ),
                                )
                              ],
                            ),
                          ),
                          Icon(
                            (isActive) ? Icons.expand_less : Icons.expand_more,
                            color: secondaryColor,
                            size: 28,
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: (isActive),
                      child: const SizedBox(
                        height: 10,
                      ),
                    ),
                    Visibility(
                        visible: (isActive),
                        child: Expanded(
                          child: SizedBox(
                            child: Text("""
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue.""",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: secondaryColorBrighter)),
                          ),
                        ))
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
