import 'package:flutter/material.dart';

class OnBoardingThirdView extends StatelessWidget {
  const OnBoardingThirdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage(
                      'assets/images/onboarding2.png',
                    ),
                    height: 300.0,
                    width: 300.0,
                  )
                ]),
          ),
          Flexible(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Connect people\naround the world',
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
