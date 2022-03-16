import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'practice_event.dart';
part 'practice_state.dart';

class PracticeBloc extends Bloc<PracticeEvent, PracticeState> {
  PracticeBloc() : super(PracticeInitial()) {
    on<PracticeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
