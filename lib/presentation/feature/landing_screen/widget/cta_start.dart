import 'package:flutter/material.dart';

class CtaStart extends StatelessWidget {
  const CtaStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 320,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.4),
                offset: const Offset(3, 4),
                blurRadius: 6,
                spreadRadius: 4)
          ]),
      child: Center(
        child: Text(
          "C'est parti!",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
