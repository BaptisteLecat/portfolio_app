import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/feature/project/widget/project_info_card.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({Key? key}) : super(key: key);

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
                    SizedBox(
                      height: 320,
                      child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              color: primaryColor,
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Application Festivapp",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(color: secondaryColor),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English""",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 16,
                                        color: secondaryColorBrighter),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  ProjectInfoCard(),
                                  ProjectInfoCard(),
                                ],
                              )
                            ]),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
