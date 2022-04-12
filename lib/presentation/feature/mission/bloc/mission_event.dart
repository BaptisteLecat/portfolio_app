part of 'mission_bloc.dart';

abstract class MissionEvent extends Equatable {
  const MissionEvent([List props = const []]);

  @override
  List<Object> get props => [];
}

class MissionReset extends MissionEvent {}

class MissionSelect extends MissionEvent {
  final Mission mission;
  MissionSelect({required this.mission}) : super([mission]);
}

class MissionFetchAll extends MissionEvent {}

class MissionCreation extends MissionEvent {}

class MissionCancelCreation extends MissionEvent {}

class MissionConfirmCreation extends MissionEvent {
  final Mission mission;
  MissionConfirmCreation({required this.mission}) : super([mission]);
}

class MissionUpdate extends MissionEvent {
  final Mission mission;
  MissionUpdate({required this.mission}) : super([mission]);
}

class MissionDelete extends MissionEvent {
  final Mission mission;
  MissionDelete({required this.mission}) : super([mission]);
}
