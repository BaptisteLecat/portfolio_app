part of 'landing_screen_bloc.dart';

abstract class LandingScreenState extends Equatable {
  const LandingScreenState();

  @override
  List<Object> get props => [];
}

class LandingScreenLoading extends LandingScreenState {
  const LandingScreenLoading();
  @override
  String toString() => 'LandingScreenLoading';
}

class LandingScreenOnBoarding extends LandingScreenState {
  const LandingScreenOnBoarding();
  @override
  String toString() => 'LandingScreenOnBoarding';
}

class LandingScreenHome extends LandingScreenState {
  const LandingScreenHome();
  @override
  String toString() => 'LandingScreenHome';
}
