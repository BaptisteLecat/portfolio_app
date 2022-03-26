import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/feature/practice/screen/course_screen.dart';
import 'package:portfolio_app/presentation/feature/practice/screen/work_screen.dart';
import 'package:portfolio_app/presentation/feature/practice/widget/practice_card.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class PracticesView extends StatelessWidget {
  const PracticesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Flex(
            mainAxisSize: MainAxisSize.min,
            direction: Axis.vertical,
            children: [
              SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Experiences professionnelles",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: secondaryColor, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: ((context, index) {
                            return GestureDetector(
                                onTap: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              CourseScreen())));
                                }),
                                child: PracticeCard());
                          })),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 4,
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
                    SizedBox(
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: ((context, index) {
                            return GestureDetector(
                                onTap: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              WorkScreen())));
                                }),
                                child: PracticeCard());
                          })),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
