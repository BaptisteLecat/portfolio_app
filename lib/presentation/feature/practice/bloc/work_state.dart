part of 'work_bloc.dart';

enum WorkStatus {
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

extension WorkStatusX on WorkStatus {
  bool get initial => this == WorkStatus.initial;
  bool get success => this == WorkStatus.success;
  bool get failure => this == WorkStatus.failure;
  bool get inProgress => this == WorkStatus.inProgress;
  bool get select => this == WorkStatus.select;
  bool get creation => this == WorkStatus.creation;
  bool get cancelCreation => this == WorkStatus.cancelCreation;
  bool get confirmCreation => this == WorkStatus.confirmCreation;
  bool get created => this == WorkStatus.created;
  bool get deleted => this == WorkStatus.deleted;
  bool get updated => this == WorkStatus.updated;
}

class WorkState extends Equatable {
  const WorkState(
      {this.status = WorkStatus.initial,
      this.message = '',
      List<Work>? works,
      Work? work})
      : works = works ?? const [],
        work = work ?? Work.empty;

  final WorkStatus status;
  final String message;
  final List<Work> works;
  final Work work;

  @override
  List<Object> get props => [status, message];

  WorkState copyWith(
      {WorkStatus? status, String? message, List<Work>? works, Work? work}) {
    return WorkState(
      status: status ?? this.status,
      message: message ?? this.message,
      works: works ?? this.works,
      work: work ?? this.work,
    );
  }
}
