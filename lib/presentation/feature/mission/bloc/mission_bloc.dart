import 'package:bloc/bloc.dart';
import 'package:portfolio_app/common/api/error/AppException.dart';
import 'package:portfolio_app/domain/entity/mission/mission.dart';
import 'package:portfolio_app/domain/repository/mission_repository/mission_repository.dart';
import 'package:equatable/equatable.dart';
part 'mission_event.dart';
part 'mission_state.dart';

class MissionBloc extends Bloc<MissionEvent, MissionState> {
  MissionRepository _missionRepository = MissionRepository();
  MissionBloc() : super(const MissionState()) {
    on<MissionReset>(_onReset);
    on<MissionSelect>(_onSelect);
    on<MissionFetchAll>(_onFetchAll);
    on<MissionCreation>(_onCreateMission);
    on<MissionCancelCreation>(_onCancelCreation);
    on<MissionConfirmCreation>(_onConfirmCreation);
    on<MissionUpdate>(_onUpdate);
    on<MissionDelete>(_onDelete);
  }

  _onSelect(
    MissionSelect event,
    Emitter<MissionState> emit,
  ) async {
    emit(state.copyWith(
      status: MissionStatus.select,
      message: '',
      mission: event.mission,
    ));
  }

  _onReset(
    MissionReset event,
    Emitter<MissionState> emit,
  ) async {
    emit(state.copyWith(
      status: MissionStatus.initial,
      message: '',
      mission: Mission.empty,
      missions: const [],
    ));
  }

  _onCreateMission(
    MissionCreation event,
    Emitter<MissionState> emit,
  ) async {
    emit(state.copyWith(
      status: MissionStatus.creation,
    ));
  }

  _onCancelCreation(
    MissionCancelCreation event,
    Emitter<MissionState> emit,
  ) async {
    emit(state.copyWith(
      status: MissionStatus.cancelCreation,
    ));
  }

  _onConfirmCreation(
    MissionConfirmCreation event,
    Emitter<MissionState> emit,
  ) async {
    emit(state.copyWith(
      status: MissionStatus.inProgress,
    ));
    try {
      await _missionRepository.create(event.mission).then((value) {
        emit(state.copyWith(
          status: MissionStatus.created,
          message: '',
          mission: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: MissionStatus.failure,
          message: error.message,
          mission: Mission.empty,
          missions: const [],
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: MissionStatus.failure,
        message: e.toString(),
        mission: Mission.empty,
        missions: const [],
      ));
    }
  }

  _onUpdate(
    MissionUpdate event,
    Emitter<MissionState> emit,
  ) async {
    emit(state.copyWith(
      status: MissionStatus.inProgress,
    ));
    try {
      // TODO implement creation Entity
      await _missionRepository.update(event.mission).then((value) {
        emit(state.copyWith(
          status: MissionStatus.updated,
          message: '',
          mission: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: MissionStatus.failure,
          message: error.message,
          mission: Mission.empty,
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: MissionStatus.failure,
        message: e.toString(),
        mission: Mission.empty,
        missions: const [],
      ));
    }
  }

  _onDelete(
    MissionDelete event,
    Emitter<MissionState> emit,
  ) async {
    emit(state.copyWith(
      status: MissionStatus.inProgress,
    ));
    try {
      // TODO implement creation Entity
      await _missionRepository.delete(event.mission).then((value) {
        emit(state.copyWith(
          status: MissionStatus.deleted,
          message: '',
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: MissionStatus.failure,
          message: error.message,
          mission: Mission.empty,
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: MissionStatus.failure,
        message: e.toString(),
        mission: Mission.empty,
        missions: const [],
      ));
    }
  }

  _onFetchAll(
    MissionFetchAll event,
    Emitter<MissionState> emit,
  ) async {
    emit(state.copyWith(
      status: MissionStatus.inProgress,
      message: '',
      mission: Mission.empty,
      missions: const [],
    ));
    try {
      await _missionRepository.getAll().then((value) {
        emit(state.copyWith(
          status: MissionStatus.success,
          message: '',
          mission: Mission.empty,
          missions: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: MissionStatus.failure,
          message: error.message,
          mission: Mission.empty,
          missions: const [],
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: MissionStatus.failure,
        message: e.toString(),
        mission: Mission.empty,
        missions: const [],
      ));
    }
  }
}
