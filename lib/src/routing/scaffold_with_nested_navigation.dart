// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

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
      extendBody: true,
      body: Stack(
        children: [
          body,
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              //if is android 80 else 100
              height: (Theme.of(context).platform == TargetPlatform.android)
                  ? 80
                  : 100,
              color: Colors.transparent,
              child: CustomNavigationBar(
                backgroundColor: Theme.of(context).dividerColor,
                onTap: onDestinationSelected,
                currentIndex: currentIndex,
                isFloating: true,
                borderRadius: Radius.circular(26),
                iconSize: 52.0,
                // selectedColor: Color(0xff040267),
                selectedColor: Theme.of(context).primaryColor,
                strokeColor: Theme.of(context).scaffoldBackgroundColor,

                unSelectedColor: Theme.of(context).dividerColor,
                elevation: 10,
                scaleFactor: 0.22,

                scaleCurve: Curves.easeInOutCubicEmphasized,
                items: [
                  CustomNavigationBarItem(
                    icon: Center(
                      child: SvgPicture.asset(
                        "assets/icons/menu/career-choice.svg",
                        height: 26,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                    selectedIcon: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/menu/career-choice-filled.svg",
                          height: 26,
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                  ),
                  CustomNavigationBarItem(
                    icon: Center(
                      child: SvgPicture.asset(
                        "assets/icons/menu/coding.svg",
                        height: 26,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                    selectedIcon: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/menu/coding-filled.svg",
                          height: 26,
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                  ),
                  CustomNavigationBarItem(
                    icon: Center(
                      child: SvgPicture.asset(
                        "assets/icons/menu/start-up.svg",
                        height: 24,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                    selectedIcon: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/menu/start-up-filled.svg",
                          height: 24,
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                  ),
                  CustomNavigationBarItem(
                    icon: Center(
                      child: SvgPicture.asset(
                        "assets/icons/menu/settings.svg",
                        height: 24,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                    selectedIcon: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/menu/settings-filled.svg",
                          height: 24,
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
