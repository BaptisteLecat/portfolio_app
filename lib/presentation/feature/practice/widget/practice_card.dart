import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class PracticeCard extends StatelessWidget {
  const PracticeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 90,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(
            color: secondaryColorBrighter.withOpacity(0.2), width: 1),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 3,
            right: 3,
            child: Container(
              decoration: BoxDecoration(
                  color: secondaryColorBrighter, shape: BoxShape.circle),
              height: 22,
              width: 22,
            ),
          ),
          Row(children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(14))),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Windle",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: primaryColor, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Alternance - Flutter / Symfony",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: secondaryColor, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "St-Herblain",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: secondaryColorBrighter),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
