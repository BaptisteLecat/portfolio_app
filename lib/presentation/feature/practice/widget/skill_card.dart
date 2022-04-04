import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(color: primaryColor),
              ),
            ),
            Text(
              "Xamarin",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: secondaryColor, fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
