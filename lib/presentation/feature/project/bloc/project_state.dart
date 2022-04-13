part of 'project_bloc.dart';

enum ProjectStatus {
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

extension ProjectStatusX on ProjectStatus {
  bool get initial => this == ProjectStatus.initial;
  bool get success => this == ProjectStatus.success;
  bool get failure => this == ProjectStatus.failure;
  bool get inProgress => this == ProjectStatus.inProgress;
  bool get select => this == ProjectStatus.select;
  bool get creation => this == ProjectStatus.creation;
  bool get cancelCreation => this == ProjectStatus.cancelCreation;
  bool get confirmCreation => this == ProjectStatus.confirmCreation;
  bool get created => this == ProjectStatus.created;
  bool get deleted => this == ProjectStatus.deleted;
  bool get updated => this == ProjectStatus.updated;
}

class ProjectState extends Equatable {
  const ProjectState(
      {this.status = ProjectStatus.initial,
      this.message = '',
      List<Project>? projects,
      Project? project})
      : projects = projects ?? const [],
        project = project ?? Project.empty;

  final ProjectStatus status;
  final String message;
  final List<Project> projects;
  final Project project;

  @override
  List<Object> get props => [status, message];

  ProjectState copyWith(
      {ProjectStatus? status,
      String? message,
      List<Project>? projects,
      Project? project}) {
    return ProjectState(
      status: status ?? this.status,
      message: message ?? this.message,
      projects: projects ?? this.projects,
      project: project ?? this.project,
    );
  }
}
