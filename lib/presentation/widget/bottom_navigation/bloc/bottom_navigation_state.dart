part of 'bottom_navigation_bloc.dart';

enum NavbarItem { home, presence, classroom }

class BottomNavigationState extends Equatable {
  final NavbarItem navbarItem;
  final int index;

  const BottomNavigationState({NavbarItem? navbarItem, int? index})
      : index = index ?? 0,
        navbarItem = navbarItem ?? NavbarItem.home;

  @override
  List<Object> get props => [navbarItem, index];

  BottomNavigationState copyWith({
    NavbarItem? navbarItem,
    int? index,
  }) {
    return BottomNavigationState(
      navbarItem: navbarItem ?? this.navbarItem,
      index: index ?? this.index,
    );
  }
}
