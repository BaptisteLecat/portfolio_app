import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'skill_event.dart';
part 'skill_state.dart';

class SkillBloc extends Bloc<SkillEvent, SkillState> {
  SkillBloc() : super(SkillInitial()) {
    on<SkillEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
