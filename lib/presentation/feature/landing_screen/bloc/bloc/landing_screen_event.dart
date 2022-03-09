part of 'landing_screen_bloc.dart';

abstract class LandingScreenEvent extends Equatable {
  const LandingScreenEvent();

  @override
  List<Object> get props => [];
}

class LandingCheckFirstStart extends LandingScreenEvent {
  const LandingCheckFirstStart();
}

class LandingStartApp extends LandingScreenEvent {
  const LandingStartApp({required this.duration});
  final int duration;

  @override
  List<Object> get props => [duration];
}
