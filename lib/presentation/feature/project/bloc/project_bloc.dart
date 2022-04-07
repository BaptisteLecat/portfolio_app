/*import 'package:bloc/bloc.dart';
import 'package:portfolio_app/common/api/error/AppException.dart';
import 'package:portfolio_app/domain/entity/project/project.dart';
import 'package:portfolio_app/domain/repository/project_repository/project_repository.dart';
import 'package:equatable/equatable.dart';
part 'project_event.dart';
part 'project_state.dart';

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  ProjectRepository _projectRepository = ProjectRepository();
  ProjectBloc() : super(const ProjectState()) {
    on<ProjectReset>(_onReset);
    on<ProjectSelect>(_onSelect);
    on<ProjectFetchAll>(_onFetchAll);
    on<ProjectCreation>(_onCreateProject);
    on<ProjectCancelCreation>(_onCancelCreation);
    on<ProjectConfirmCreation>(_onConfirmCreation);
    on<ProjectUpdate>(_onUpdate);
    on<ProjectDelete>(_onDelete);
  }

  _onSelect(
    ProjectSelect event,
    Emitter<ProjectState> emit,
  ) async {
    emit(state.copyWith(
      status: ProjectStatus.select,
      message: '',
      project: event.project,
    ));
  }

  _onReset(
    ProjectReset event,
    Emitter<ProjectState> emit,
  ) async {
    emit(state.copyWith(
      status: ProjectStatus.initial,
      message: '',
      project: Project.empty,
      projects: const [],
    ));
  }

  _onCreateProject(
    ProjectCreation event,
    Emitter<ProjectState> emit,
  ) async {
    emit(state.copyWith(
      status: ProjectStatus.creation,
    ));
  }

  _onCancelCreation(
    ProjectCancelCreation event,
    Emitter<ProjectState> emit,
  ) async {
    emit(state.copyWith(
      status: ProjectStatus.cancelCreation,
    ));
  }

  _onConfirmCreation(
    ProjectConfirmCreation event,
    Emitter<ProjectState> emit,
  ) async {
    emit(state.copyWith(
      status: ProjectStatus.inProgress,
    ));
    try {
      await _projectRepository.create(event.project).then((value) {
        emit(state.copyWith(
          status: ProjectStatus.created,
          message: '',
          project: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: ProjectStatus.failure,
          message: error.message,
          project: Project.empty,
          projects: const [],
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: ProjectStatus.failure,
        message: e.toString(),
        project: Project.empty,
        projects: const [],
      ));
    }
  }

  _onUpdate(
    ProjectUpdate event,
    Emitter<ProjectState> emit,
  ) async {
    emit(state.copyWith(
      status: ProjectStatus.inProgress,
    ));
    try {
      // TODO implement creation Entity
      await _projectRepository.update(event.project).then((value) {
        emit(state.copyWith(
          status: ProjectStatus.updated,
          message: '',
          project: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: ProjectStatus.failure,
          message: error.message,
          project: Project.empty,
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: ProjectStatus.failure,
        message: e.toString(),
        project: Project.empty,
        projects: const [],
      ));
    }
  }

  _onDelete(
    ProjectDelete event,
    Emitter<ProjectState> emit,
  ) async {
    emit(state.copyWith(
      status: ProjectStatus.inProgress,
    ));
    try {
      // TODO implement creation Entity
      await _projectRepository.delete(event.project).then((value) {
        emit(state.copyWith(
          status: ProjectStatus.deleted,
          message: '',
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: ProjectStatus.failure,
          message: error.message,
          project: Project.empty,
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: ProjectStatus.failure,
        message: e.toString(),
        project: Project.empty,
        projects: const [],
      ));
    }
  }

  _onFetchAll(
    ProjectFetchAll event,
    Emitter<ProjectState> emit,
  ) async {
    emit(state.copyWith(
      status: ProjectStatus.inProgress,
      message: '',
      project: Project.empty,
      projects: const [],
    ));
    try {
      await _projectRepository.getAll().then((value) {
        emit(state.copyWith(
          status: ProjectStatus.success,
          message: '',
          project: Project.empty,
          projects: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: ProjectStatus.failure,
          message: error.message,
          project: Project.empty,
          projects: const [],
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: ProjectStatus.failure,
        message: e.toString(),
        project: Project.empty,
        projects: const [],
      ));
    }
  }
}
*/