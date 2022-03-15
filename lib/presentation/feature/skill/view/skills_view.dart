import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/feature/skill/widget/skill_box.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      padding: EdgeInsets.all(20),
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(100, (index) {
        return SkillBox();
      }),
    ));
  }
}
