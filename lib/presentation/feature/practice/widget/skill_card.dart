import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 86,
      decoration: BoxDecoration(
        border: Border.all(
            color: secondaryColorBrighter.withOpacity(0.2), width: 1),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 42,
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Expanded(
              child: Text("Flutter",
                  style: Theme.of(context).textTheme.bodyText1)),
        ]),
      ),
    );
  }
}
