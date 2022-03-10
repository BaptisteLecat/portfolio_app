import 'package:flutter/material.dart';

class OnBoardingFirstView extends StatelessWidget {
  const OnBoardingFirstView({Key? key}) : super(key: key);

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
                      'assets/images/onboarding0.png',
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
              children: [
                Text(
                  'Connect people\naround the world',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.white),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.white.withOpacity(0.6)),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
