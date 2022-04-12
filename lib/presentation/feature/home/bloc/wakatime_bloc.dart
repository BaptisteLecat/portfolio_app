import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:portfolio_app/common/api/error/AppException.dart';
import 'package:portfolio_app/domain/service/wakatime/entity/wakatime_code_activity/wakatime_code_activity.dart';
import 'package:portfolio_app/domain/service/wakatime/repository/wakatime_repository.dart';
part 'wakatime_event.dart';
part 'wakatime_state.dart';

class WakatimeBloc extends Bloc<WakatimeEvent, WakatimeState> {
  final WakatimeRepository _wakatimeRepository = WakatimeRepository();
  WakatimeBloc() : super(const WakatimeState()) {
    on<WakatimeFetchDaily>(_onFetchDaily);
  }

  _onFetchDaily(
    WakatimeFetchDaily event,
    Emitter<WakatimeState> emit,
  ) async {
    emit(state.copyWith(
      status: WakatimeStatus.inProgress,
    ));
    try {
      await _wakatimeRepository.getCodingActivity().then((value) {
        print(value);
        emit(state.copyWith(
          status: WakatimeStatus.success,
          message: '',
          wakatimeCodeActivities: value,
        ));
      }).onError((AppException error, stackTrace) {
        emit(state.copyWith(
          status: WakatimeStatus.failure,
          message: error.message,
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        status: WakatimeStatus.failure,
        message: e.toString(),
      ));
    }
  }
}
