import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class FakeFormInputText extends StatelessWidget {
  final String label;
  final String value;
  const FakeFormInputText({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: secondaryColorBrighter),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: secondaryColorLessOpacity,
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(width: 1.4, color: secondaryColorBrighter)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        value,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: secondaryColor),
                      )
                    ]),
              ),
            )
          ]),
    );
  }
}
