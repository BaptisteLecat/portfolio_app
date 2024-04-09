import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_app/src/features/experiences/domain/entities/experience.dart';
import 'package:portfolio_app/src/routing/app_router.dart';

class ExperienceCard extends StatelessWidget {
  final Experience experience;
  const ExperienceCard({
    super.key,
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(AppRoute.experienceId.name, pathParameters: {
          "experienceId": "${experience.id}",
        });
      },
      child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color:
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.3),
                blurRadius: 14,
                spreadRadius: 6,
                offset: const Offset(0, -8),
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(experience.title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        )),
                Spacer(),
                Text("${experience.startYear} / ${experience.endYear}",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).scaffoldBackgroundColor,
                        )),
                Text(
                  "${experience.city} - ${experience.country}",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                )
              ],
            ),
          )),
    );
  }
}
