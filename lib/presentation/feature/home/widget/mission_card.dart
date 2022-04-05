import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class MissionCard extends StatelessWidget {
  const MissionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14.0),
      width: 260,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 2,
              child: Container(
                  width: 60,
                  height: 54,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: primaryColor),
                  child: Icon(Icons.check_sharp)),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
                flex: 5,
                child: Container(
                  child: Text("Gestion de la modification d'email",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: secondaryColor)),
                ))
          ],
        ),
      ),
    );
  }
}
