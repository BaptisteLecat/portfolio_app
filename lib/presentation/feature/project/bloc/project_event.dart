/*part of 'project_bloc.dart';

abstract class ProjectEvent extends Equatable {
  const ProjectEvent([List props = const []]);

  @override
  List<Object> get props => [];
}

class ProjectReset extends ProjectEvent {}

class ProjectSelect extends ProjectEvent {
  final Project project;
  ProjectSelect({required this.project}) : super([project]);
}

class ProjectFetchAll extends ProjectEvent {}

class ProjectCreation extends ProjectEvent {}

class ProjectCancelCreation extends ProjectEvent {}

class ProjectConfirmCreation extends ProjectEvent {
  final Project project;
  ProjectConfirmCreation({required this.project}) : super([project]);
}

class ProjectUpdate extends ProjectEvent {
  final Project project;
  ProjectUpdate({required this.project}) : super([project]);
}

class ProjectDelete extends ProjectEvent {
  final Project project;
  ProjectDelete({required this.project}) : super([project]);
}*/
