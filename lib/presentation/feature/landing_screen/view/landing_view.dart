import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/view/on_boarding/on_boarding_first_view.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/view/on_boarding/on_boarding_second_view.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/view/on_boarding/on_boarding_third_view.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/widget/cta_start.dart';

class LandingView extends StatefulWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  _LandingViewState createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
          enableLoop: true,
          fullTransitionValue: 300,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
          pages: const [
            OnBoardingFirstView(),
            OnBoardingSecondView(),
            OnBoardingThirdView(),
          ]),
    );
  }
}
