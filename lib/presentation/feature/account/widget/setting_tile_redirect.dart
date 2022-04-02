import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingTileRedirect extends StatelessWidget {
  final String url;
  final String title;
  final Widget icon;
  const SettingTileRedirect({
    Key? key,
    required this.url,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (() async {
          if (!await launch(url)) throw 'Could not launch $url';
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
              ),
            ),
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
