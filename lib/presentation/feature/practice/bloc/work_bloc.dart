import 'package:bloc/bloc.dart';
import 'package:portfolio_app/common/api/error/AppException.dart';
import 'package:portfolio_app/domain/entity/work/work.dart';
import 'package:portfolio_app/domain/repository/work_repository/work_repository.dart';
import 'package:equatable/equatable.dart';
part 'work_event.dart';
part 'work_state.dart';

class WorkBloc extends Bloc<WorkEvent, WorkState> {
  WorkRepository _workRepository = WorkRepository();
  WorkBloc() : super(const WorkState()) {
    on<WorkReset>(_onReset);
    on<WorkSelect>(_onSelect);
    on<WorkFetchAll>(_onFetchAll);
    on<WorkCreation>(_onCreateWork);
    on<WorkCancelCreation>(_onCancelCreation);
    on<WorkConfirmCreation>(_onConfirmCreation);
    on<WorkUpdate>(_onUpdate);
    on<WorkDelete>(_onDelete);
  }

  _onSelect(
    WorkSelect event,
    Emitter<WorkState> emit,
  ) async {
    emit(state.copyWith(
      status: WorkStatus.select,
      message: '',
      work: event.work,
    ));
  }

  _onReset(
    WorkReset event,
    Emitter<WorkState> emit,
  ) async {
    emit(state.copyWith(
      status: WorkStatus.initial,
      message: '',
      work: Work.empty,
      works: const [],
    ));
  }

  _onCreateWork(
    WorkCreation event,
    Emitter<WorkState> emit,
  ) async {
    emit(state.copyWith(
      status: WorkStatus.creation,
    ));
  }

  _onCancelCreation(
    WorkCancelCreation event,
    Emitter<WorkState> emit,
  ) async {
    emit(state.copyWith(
      status: WorkStatus.cancelCreation,
    ));
  }

  _onConfirmCreation(
    WorkConfirmCreation event,
    Emitter<WorkState> emit,
  ) async {
    emit(state.copyWith(
      status: WorkStatus.inProgress,
    ));
    try {
      await _workRepository.create(event.work).then((value) {
        emit(state.copyWith(
          status: WorkStatus.created,
          message: '',
          work: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: WorkStatus.failure,
          message: error.message,
          work: Work.empty,
          works: const [],
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: WorkStatus.failure,
        message: e.toString(),
        work: Work.empty,
        works: const [],
      ));
    }
  }

  _onUpdate(
    WorkUpdate event,
    Emitter<WorkState> emit,
  ) async {
    emit(state.copyWith(
      status: WorkStatus.inProgress,
    ));
    try {
      // TODO implement creation Entity
      await _workRepository.update(event.work).then((value) {
        emit(state.copyWith(
          status: WorkStatus.updated,
          message: '',
          work: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: WorkStatus.failure,
          message: error.message,
          work: Work.empty,
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: WorkStatus.failure,
        message: e.toString(),
        work: Work.empty,
        works: const [],
      ));
    }
  }

  _onDelete(
    WorkDelete event,
    Emitter<WorkState> emit,
  ) async {
    emit(state.copyWith(
      status: WorkStatus.inProgress,
    ));
    try {
      // TODO implement creation Entity
      await _workRepository.delete(event.work).then((value) {
        emit(state.copyWith(
          status: WorkStatus.deleted,
          message: '',
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: WorkStatus.failure,
          message: error.message,
          work: Work.empty,
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: WorkStatus.failure,
        message: e.toString(),
        work: Work.empty,
        works: const [],
      ));
    }
  }

  _onFetchAll(
    WorkFetchAll event,
    Emitter<WorkState> emit,
  ) async {
    emit(state.copyWith(
      status: WorkStatus.inProgress,
      message: '',
      work: Work.empty,
      works: const [],
    ));
    try {
      await _workRepository.getAll().then((value) {
        emit(state.copyWith(
          status: WorkStatus.success,
          message: '',
          work: Work.empty,
          works: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: WorkStatus.failure,
          message: error.message,
          work: Work.empty,
          works: const [],
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: WorkStatus.failure,
        message: e.toString(),
        work: Work.empty,
        works: const [],
      ));
    }
  }
}
