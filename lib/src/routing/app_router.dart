import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_app/src/features/experiences/experiences_screen.dart';
import 'package:portfolio_app/src/features/experiences/experiences_screen.dart';
import 'package:portfolio_app/src/features/home/home_screen.dart';
import 'package:portfolio_app/src/features/skills/skills_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:portfolio_app/src/routing/not_found_screen.dart';
import 'package:portfolio_app/src/routing/scaffold_with_nested_navigation.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigator1Key = GlobalKey<NavigatorState>(debugLabel: 'shell1');
final _shellNavigator2Key = GlobalKey<NavigatorState>(debugLabel: 'shell2');
final _shellNavigator3Key = GlobalKey<NavigatorState>(
  debugLabel: 'shell3',
);

enum AppRoute {
  home(route: "/home"),
  experiences(route: "/experiences"),
  skills(route: "/skills"),
  ;

  const AppRoute({required this.route});
  final String route;
}

GoRouter goRouter(ProviderRef<GoRouter> ref) {
  return GoRouter(
    initialLocation: '/home',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigator1Key,
            routes: [
              GoRoute(
                path: AppRoute.home.route,
                name: AppRoute.home.name,
                pageBuilder: (context, state) {
                  return NoTransitionPage(child: HomeScreen());
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigator2Key,
            routes: [
              // Shopping Cart
              GoRoute(
                path: AppRoute.experiences.route,
                name: AppRoute.experiences.name,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: ExperiencesScreen()),
                routes: const [],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigator3Key,
            routes: [
              // Shopping Cart
              GoRoute(
                path: AppRoute.skills.route,
                name: AppRoute.skills.name,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: SkillsScreen()),
              ),
            ],
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return goRouter(ref);
});
