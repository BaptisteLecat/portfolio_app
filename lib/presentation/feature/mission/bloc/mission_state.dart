part of 'mission_bloc.dart';

enum MissionStatus {
  initial,
  success,
  failure,
  inProgress,
  select,
  creation,
  cancelCreation,
  confirmCreation,
  created,
  deleted,
  updated
}

extension MissionStatusX on MissionStatus {
  bool get initial => this == MissionStatus.initial;
  bool get success => this == MissionStatus.success;
  bool get failure => this == MissionStatus.failure;
  bool get inProgress => this == MissionStatus.inProgress;
  bool get select => this == MissionStatus.select;
  bool get creation => this == MissionStatus.creation;
  bool get cancelCreation => this == MissionStatus.cancelCreation;
  bool get confirmCreation => this == MissionStatus.confirmCreation;
  bool get created => this == MissionStatus.created;
  bool get deleted => this == MissionStatus.deleted;
  bool get updated => this == MissionStatus.updated;
}

class MissionState extends Equatable {
  const MissionState(
      {this.status = MissionStatus.initial,
      this.message = '',
      List<Mission>? missions,
      Mission? mission})
      : missions = missions ?? const [],
        mission = mission ?? Mission.empty;

  final MissionStatus status;
  final String message;
  final List<Mission> missions;
  final Mission mission;

  @override
  List<Object> get props => [status, message];

  MissionState copyWith(
      {MissionStatus? status,
      String? message,
      List<Mission>? missions,
      Mission? mission}) {
    return MissionState(
      status: status ?? this.status,
      message: message ?? this.message,
      missions: missions ?? this.missions,
      mission: mission ?? this.mission,
    );
  }
}
