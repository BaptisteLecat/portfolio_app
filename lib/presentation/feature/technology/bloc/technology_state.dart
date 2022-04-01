part of 'technology_bloc.dart';

enum TechnologyStatus {
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

extension TechnologyStatusX on TechnologyStatus {
  bool get initial => this == TechnologyStatus.initial;
  bool get success => this == TechnologyStatus.success;
  bool get failure => this == TechnologyStatus.failure;
  bool get inProgress => this == TechnologyStatus.inProgress;
  bool get select => this == TechnologyStatus.select;
  bool get creation => this == TechnologyStatus.creation;
  bool get cancelCreation => this == TechnologyStatus.cancelCreation;
  bool get confirmCreation => this == TechnologyStatus.confirmCreation;
  bool get created => this == TechnologyStatus.created;
  bool get deleted => this == TechnologyStatus.deleted;
  bool get updated => this == TechnologyStatus.updated;
}

class TechnologyState extends Equatable {
  const TechnologyState(
      {this.status = TechnologyStatus.initial,
      this.message = '',
      List<Technology>? technologies,
      Technology? technology})
      : technologies = technologies ?? const [],
        technology = technology ?? Technology.empty;

  final TechnologyStatus status;
  final String message;
  final List<Technology> technologies;
  final Technology technology;

  @override
  List<Object> get props => [status, message];

  TechnologyState copyWith(
      {TechnologyStatus? status,
      String? message,
      List<Technology>? technologies,
      Technology? technology}) {
    return TechnologyState(
      status: status ?? this.status,
      message: message ?? this.message,
      technologies: technologies ?? this.technologies,
      technology: technology ?? this.technology,
    );
  }
}
