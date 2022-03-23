import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(const BottomNavigationState()) {
    on<NavigateTo>(_onNavigateTo);
  }
}

void _onNavigateTo(NavigateTo event, Emitter<BottomNavigationState> emit) {
  switch (event.navBarItem) {
    case NavbarItem.home:
      emit(const BottomNavigationState()
          .copyWith(navbarItem: NavbarItem.home, index: 0));
      break;
    case NavbarItem.practice:
      emit(const BottomNavigationState()
          .copyWith(navbarItem: NavbarItem.practice, index: 1));
      break;
    case NavbarItem.skill:
      emit(const BottomNavigationState()
          .copyWith(navbarItem: NavbarItem.skill, index: 2));
      break;
  }
}
