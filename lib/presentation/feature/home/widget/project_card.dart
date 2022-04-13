import 'package:flutter/material.dart';
import 'package:portfolio_app/common/functions/date_functions.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class ProjectCard extends StatelessWidget {
  final String? name;
  final String? picture;
  final DateTime? start;
  final DateTime? end;
  final Company? company;
  final School? school;
  const ProjectCard({
    Key? key,
    required this.name,
    required this.picture,
    required this.start,
    required this.end,
    required this.company,
    required this.school,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14),
      height: 230,
      width: 180,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 8,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  child: Image.network(
                    "$picture",
                    errorBuilder: ((context, error, stackTrace) => Container(
                          color: primaryColor,
                        )),
                    fit: BoxFit.fill,
                  )),
            ),
            Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          (start != null && end != null)
                              ? "${start!.day} ${monthFromMonthIndex(start!.month)} - ${end!.day} ${monthFromMonthIndex(end!.month)}"
                              : "En cours",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: secondaryColorBrighter)),
                      Text("$name",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: secondaryColor)),
                      Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.work, color: secondaryColor),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                  (company != null)
                                      ? "${company!.name}"
                                      : (school != null)
                                          ? "${school!.name}"
                                          : "En indépendant",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(color: primaryColor)),
                            ),
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
