import 'package:bloc/bloc.dart';
import 'package:portfolio_app/common/api/error/AppException.dart';
import 'package:portfolio_app/domain/entity/technology/technology.dart';
import 'package:portfolio_app/domain/repository/technology_repository/technology_repository.dart';
import 'package:equatable/equatable.dart';
part 'technology_event.dart';
part 'technology_state.dart';

class TechnologyBloc extends Bloc<TechnologyEvent, TechnologyState> {
  TechnologyRepository _technologyRepository = TechnologyRepository();
  TechnologyBloc() : super(const TechnologyState()) {
    on<TechnologyReset>(_onReset);
    on<TechnologySelect>(_onSelect);
    on<TechnologyFetchAll>(_onFetchAll);
    on<TechnologyCreation>(_onCreateTechnology);
    on<TechnologyCancelCreation>(_onCancelCreation);
    on<TechnologyConfirmCreation>(_onConfirmCreation);
    on<TechnologyUpdate>(_onUpdate);
    on<TechnologyDelete>(_onDelete);
  }

  _onSelect(
    TechnologySelect event,
    Emitter<TechnologyState> emit,
  ) async {
    emit(state.copyWith(
      status: TechnologyStatus.select,
      message: '',
      technology: event.technology,
    ));
  }

  _onReset(
    TechnologyReset event,
    Emitter<TechnologyState> emit,
  ) async {
    emit(state.copyWith(
      status: TechnologyStatus.initial,
      message: '',
      technology: Technology.empty,
      technologies: const [],
    ));
  }

  _onCreateTechnology(
    TechnologyCreation event,
    Emitter<TechnologyState> emit,
  ) async {
    emit(state.copyWith(
      status: TechnologyStatus.creation,
    ));
  }

  _onCancelCreation(
    TechnologyCancelCreation event,
    Emitter<TechnologyState> emit,
  ) async {
    emit(state.copyWith(
      status: TechnologyStatus.cancelCreation,
    ));
  }

  _onConfirmCreation(
    TechnologyConfirmCreation event,
    Emitter<TechnologyState> emit,
  ) async {
    emit(state.copyWith(
      status: TechnologyStatus.inProgress,
    ));
    try {
      await _technologyRepository.create(event.technology).then((value) {
        emit(state.copyWith(
          status: TechnologyStatus.created,
          message: '',
          technology: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: TechnologyStatus.failure,
          message: error.message,
          technology: Technology.empty,
          technologies: const [],
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: TechnologyStatus.failure,
        message: e.toString(),
        technology: Technology.empty,
        technologies: const [],
      ));
    }
  }

  _onUpdate(
    TechnologyUpdate event,
    Emitter<TechnologyState> emit,
  ) async {
    emit(state.copyWith(
      status: TechnologyStatus.inProgress,
    ));
    try {
      // TODO implement creation Entity
      await _technologyRepository.update(event.technology).then((value) {
        emit(state.copyWith(
          status: TechnologyStatus.updated,
          message: '',
          technology: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: TechnologyStatus.failure,
          message: error.message,
          technology: Technology.empty,
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: TechnologyStatus.failure,
        message: e.toString(),
        technology: Technology.empty,
        technologies: const [],
      ));
    }
  }

  _onDelete(
    TechnologyDelete event,
    Emitter<TechnologyState> emit,
  ) async {
    emit(state.copyWith(
      status: TechnologyStatus.inProgress,
    ));
    try {
      // TODO implement creation Entity
      await _technologyRepository.delete(event.technology).then((value) {
        emit(state.copyWith(
          status: TechnologyStatus.deleted,
          message: '',
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: TechnologyStatus.failure,
          message: error.message,
          technology: Technology.empty,
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: TechnologyStatus.failure,
        message: e.toString(),
        technology: Technology.empty,
        technologies: const [],
      ));
    }
  }

  _onFetchAll(
    TechnologyFetchAll event,
    Emitter<TechnologyState> emit,
  ) async {
    emit(state.copyWith(
      status: TechnologyStatus.inProgress,
      message: '',
      technology: Technology.empty,
      technologies: const [],
    ));
    try {
      await _technologyRepository.getAll().then((value) {
        emit(state.copyWith(
          status: TechnologyStatus.success,
          message: '',
          technology: Technology.empty,
          technologies: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: TechnologyStatus.failure,
          message: error.message,
          technology: Technology.empty,
          technologies: const [],
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: TechnologyStatus.failure,
        message: e.toString(),
        technology: Technology.empty,
        technologies: const [],
      ));
    }
  }
}
