import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class SettingTile extends StatelessWidget {
  final Widget page;
  final String title;
  final Widget icon;
  const SettingTile({
    Key? key,
    required this.page,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page));
        }),
        child: Row(
          children: [
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: secondaryColorLessOpacity,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(child: icon),
                )),
            const SizedBox(
              width: 14,
            ),
            Expanded(
              child: Text(title,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: secondaryColor,
                      )),
            ),
            const Icon(Icons.chevron_right, color: secondaryColor),
          ],
        ),
      ),
    );
  }
}
