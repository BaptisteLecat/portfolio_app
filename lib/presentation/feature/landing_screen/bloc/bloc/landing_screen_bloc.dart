import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'landing_screen_event.dart';
part 'landing_screen_state.dart';

class LandingScreenBloc extends Bloc<LandingScreenEvent, LandingScreenState> {
  LandingScreenBloc() : super(LandingScreenLoading()) {
    on<LandingCheckFirstStart>(_onFirstStartApp);
    on<LandingStartApp>(_onStartApp);
  }

  void _onFirstStartApp(
      LandingScreenEvent event, Emitter<LandingScreenState> emit) {
    //Lire la data dans Secure Storage
    emit(const LandingScreenOnBoarding());
  }

  void _onStartApp(LandingScreenEvent event, Emitter<LandingScreenState> emit) {
    //Lire la data dans Secure Storage
    emit(const LandingScreenHome());
  }
}
