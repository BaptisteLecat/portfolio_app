import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_app/src/features/experiences/presentation/experience_screen.dart';
import 'package:portfolio_app/src/features/experiences/presentation/experiences_screen.dart';
import 'package:portfolio_app/src/features/projects/presentation/project_screen.dart';
import 'package:portfolio_app/src/features/projects/presentation/projects_screen.dart';
import 'package:portfolio_app/src/features/settings/presentation/faq_screen.dart';
import 'package:portfolio_app/src/features/settings/presentation/language_screen.dart';
import 'package:portfolio_app/src/features/settings/presentation/personnal_edit_screen.dart';
import 'package:portfolio_app/src/features/settings/presentation/personnal_screen.dart';
import 'package:portfolio_app/src/features/settings/presentation/setting_screen.dart';
import 'package:portfolio_app/src/features/settings/presentation/settings_screen.dart';
import 'package:portfolio_app/src/features/tech/presentation/techs_screen.dart';
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
  projects(route: "/projects"),
  project(route: ":projectId"),
  settings(route: "/settings"),
  settingsPersonnal(route: "personnal"),
  settingsPersonnalEdit(route: "edit"),
  settingsLanguage(route: "language"),
  settingsSetting(route: "setting"),
  settingsFaq(route: "faq");

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
                      builder: (context, state) {
                        final experienceId =
                            state.pathParameters['experienceId'];
                        if (experienceId == null ||
                            int.tryParse(experienceId) == null) {
                          return const NotFoundScreen();
                        }
                        return ExperienceScreen(
                          experienceId: int.parse(experienceId),
                        );
                      }),
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
                path: AppRoute.projects.route,
                name: AppRoute.projects.name,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: ProjectsScreen()),
                routes: [
                  GoRoute(
                      path: AppRoute.project.route,
                      name: AppRoute.project.name,
                      builder: (context, state) {
                        final projectId = state.pathParameters['projectId'];
                        if (projectId == null ||
                            int.tryParse(projectId) == null) {
                          return const NotFoundScreen();
                        }
                        return ProjectScreen(
                          projectId: int.parse(projectId),
                        );
                      }),
                ],
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
                routes: [
                  GoRoute(
                    path: AppRoute.settingsPersonnal.route,
                    name: AppRoute.settingsPersonnal.name,
                    pageBuilder: (context, state) =>
                        const NoTransitionPage(child: PersonnalScreen()),
                    routes: [
                      GoRoute(
                        path: AppRoute.settingsPersonnalEdit.route,
                        name: AppRoute.settingsPersonnalEdit.name,
                        pageBuilder: (context, state) => const NoTransitionPage(
                            child: PersonnalEditScreen()),
                      ),
                    ],
                  ),
                  GoRoute(
                    path: AppRoute.settingsLanguage.route,
                    name: AppRoute.settingsLanguage.name,
                    pageBuilder: (context, state) =>
                        const NoTransitionPage(child: LanguageScreen()),
                  ),
                  GoRoute(
                    path: AppRoute.settingsSetting.route,
                    name: AppRoute.settingsSetting.name,
                    pageBuilder: (context, state) =>
                        const NoTransitionPage(child: SettingScreen()),
                  ),
                  GoRoute(
                    path: AppRoute.settingsFaq.route,
                    name: AppRoute.settingsFaq.name,
                    pageBuilder: (context, state) =>
                        const NoTransitionPage(child: FaqScreen()),
                  ),
                ],
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
