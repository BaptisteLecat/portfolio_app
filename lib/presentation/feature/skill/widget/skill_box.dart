import 'package:flutter/material.dart';

class SkillBox extends StatelessWidget {
  const SkillBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.4),
                    borderRadius: const BorderRadius.all(Radius.circular(30))),
                child: Container(
                  margin: const EdgeInsets.all(16.0),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Text("NodeJS",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Theme.of(context).primaryColor))
            ],
          ),
        ),
      ),
    );
  }
}
