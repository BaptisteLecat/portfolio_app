part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationEvent extends Equatable {
  const BottomNavigationEvent();

  @override
  List<Object> get props => [];
}

class NavigateTo extends BottomNavigationEvent {
  const NavigateTo({required this.navBarItem});
  final NavbarItem navBarItem;
}
