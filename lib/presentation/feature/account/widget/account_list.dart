import 'package:flutter/material.dart';

class AccountList extends StatelessWidget {
  final List<Widget> settingTiles;
  const AccountList({Key? key, required this.settingTiles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> settingWidgets = [];
    List.generate(settingTiles.length, (index) {
      settingWidgets.add(settingTiles[index]);
      settingWidgets.add(
        const SizedBox(
          height: 14,
        ),
      );
    });
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(children: settingWidgets),
    );
  }
}
