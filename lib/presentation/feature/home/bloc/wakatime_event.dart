part of 'wakatime_bloc.dart';

abstract class WakatimeEvent extends Equatable {
  const WakatimeEvent([List props = const []]);

  @override
  List<Object> get props => [];
}

class WakatimeFetchDaily extends WakatimeEvent {}
