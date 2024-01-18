// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'package:portfolio_app/src/localization/string_hardcoded.dart';
import 'package:portfolio_app/src/routing/app_router.dart';

// Stateful navigation based on:
// https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(
            key: key ?? const ValueKey<String>('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBottomNavBar(
      body: navigationShell,
      currentIndex: navigationShell.currentIndex,
      onDestinationSelected: _goBranch,
    );
  }
}

class ScaffoldWithBottomNavBar extends ConsumerWidget {
  const ScaffoldWithBottomNavBar({
    super.key,
    required this.body,
    required this.currentIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //current route in gorouter
    final goRouter = ref.watch(goRouterProvider);
    return Scaffold(
      body: body,
      // floatingActionButton: (goRouter.location == AppRoute.locations.route)
      //     ? FloatingActionButton(
      //         onPressed: () {
      //           context.pushNamed(AppRoute.locationCreate.name);
      //         },
      //         child: const Icon(Icons.add),
      //       )
      //     : null,
      bottomNavigationBar: Container(
        height: 80,
        child: CustomNavigationBar(
          backgroundColor: Color(0xFF1C1C1C),
          onTap: onDestinationSelected,
          currentIndex: currentIndex,
          isFloating: false,
          borderRadius: Radius.elliptical(26, 40),
          iconSize: 32.0,
          selectedColor: Color(0xff040267),
          strokeColor: Color(0x26040267),
          unSelectedColor: Color(0xffacacac),
          items: [
            CustomNavigationBarItem(
              title: Text(
                "Home",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
              selectedTitle: Text(
                "Home",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              icon: Center(
                child: SvgPicture.asset(
                  "assets/icons/menu/home.svg",
                  height: 26,
                  color: Colors.white,
                ),
              ),
              selectedIcon: Center(
                child: SvgPicture.asset("assets/icons/menu/home-filled.svg",
                    height: 26, color: Colors.white),
              ),
            ),
            CustomNavigationBarItem(
              title: Text(
                "Career",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
              selectedTitle: Text(
                "Career",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              badgeCount: 3,
              showBadge: true,
              icon: Center(
                child: SvgPicture.asset(
                  "assets/icons/menu/career-choice.svg",
                  height: 26,
                  color: Colors.white,
                ),
              ),
              selectedIcon: Center(
                child: SvgPicture.asset(
                    "assets/icons/menu/career-choice-filled.svg",
                    height: 26,
                    color: Colors.white),
              ),
            ),
            CustomNavigationBarItem(
              title: Text(
                "Profile",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
              selectedTitle: Text(
                "Profile",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              icon: Center(
                child: SvgPicture.asset("assets/icons/menu/user.svg",
                    height: 26, color: Colors.white),
              ),
              selectedIcon: Center(
                child: SvgPicture.asset("assets/icons/menu/user-filled.svg",
                    height: 26, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
