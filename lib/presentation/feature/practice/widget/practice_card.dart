import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class PracticeCard extends StatelessWidget {
  final String companyName;
  final String locationLabel;
  final String title;
  final String picture;
  const PracticeCard({
    Key? key,
    required this.companyName,
    required this.locationLabel,
    required this.title,
    required this.picture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 100,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(children: [
        Expanded(
          flex: 1,
          child: Center(
            child: SizedBox(
              height: 64,
              width: 64,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  picture,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: primaryColor,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
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
                companyName,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: primaryColor, fontWeight: FontWeight.w600),
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: secondaryColor, fontWeight: FontWeight.w600),
              ),
              Text(
                locationLabel,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: secondaryColorBrighter),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
