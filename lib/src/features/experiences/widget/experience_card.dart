import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.3),
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
              Text("Développeur Flutter",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold)),
              Spacer(),
              Text(
                "2020 / 2021",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text("Nantes - France",
                  style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ));
  }
}
