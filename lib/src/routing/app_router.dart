import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_app/src/features/experiences/experience_screen.dart';
import 'package:portfolio_app/src/features/experiences/experiences_screen.dart';
import 'package:portfolio_app/src/features/settings/settings_screen.dart';
import 'package:portfolio_app/src/features/project/profile_screen.dart';
import 'package:portfolio_app/src/features/tech/techs_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:portfolio_app/src/routing/not_found_screen.dart';
import 'package:portfolio_app/src/routing/scaffold_with_nested_navigation.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigator2Key = GlobalKey<NavigatorState>(debugLabel: 'shell2');
final _shellNavigator3Key = GlobalKey<NavigatorState>(
  debugLabel: 'shell3',
);
final _shellNavigator4Key = GlobalKey<NavigatorState>(
  debugLabel: 'shell4',
);
final _shellNavigator5Key = GlobalKey<NavigatorState>(
  debugLabel: 'shell5',
);

enum AppRoute {
  experiences(route: "/experiences"),
  experienceId(route: "experiences:experienceId"),
  techs(route: "/techs"),
  tech(route: "techs:techId"),
  skills(route: "/skills"),
  settings(route: "/settings"),
  ;

  const AppRoute({required this.route});
  final String route;
}

GoRouter goRouter(ProviderRef<GoRouter> ref) {
  return GoRouter(
    initialLocation: AppRoute.experiences.route,
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigator2Key,
            routes: [
              // Shopping Cart
              GoRoute(
                path: AppRoute.experiences.route,
                name: AppRoute.experiences.name,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: ExperiencesScreen()),
                routes: [
                  GoRoute(
                    path: AppRoute.experienceId.route,
                    name: AppRoute.experienceId.name,
                    pageBuilder: (context, state) =>
                        const NoTransitionPage(child: ExperienceScreen()),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigator3Key,
            routes: [
              // Shopping Cart
              GoRoute(
                path: AppRoute.techs.route,
                name: AppRoute.techs.name,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: TechsScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigator4Key,
            routes: [
              // Shopping Cart
              GoRoute(
                path: AppRoute.skills.route,
                name: AppRoute.skills.name,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: ProjectsScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigator5Key,
            routes: [
              GoRoute(
                path: AppRoute.settings.route,
                name: AppRoute.settings.name,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: SettingsScreen()),
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