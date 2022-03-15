import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/bloc/bloc/landing_screen_bloc.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/landing_screen.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/view/landing_view.dart';
import 'package:portfolio_app/presentation/feature/skill/screen/skills_screen.dart';
import 'package:portfolio_app/presentation/widget/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:portfolio_app/presentation/widget/bottom_navigation/fab_bottom_app_bar.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';
import 'package:portfolio_app/presentation/widget/theme/theme.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const App()),
    blocObserver: CounterObserver(),
  );
}

class CounterObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Bloc.observer = SimpleBlocDelegate();
    return AppView();
  }
}

class AppView extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavigationBloc>(
          create: (context) => BottomNavigationBloc(),
        ),
        BlocProvider<LandingScreenBloc>(
          create: (context) => LandingScreenBloc(),
        ),
      ],
      child: BlocBuilder<LandingScreenBloc, LandingScreenState>(
        buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
        builder: (context, state) {
          switch (state.runtimeType) {
            case LandingScreenLoading:
              context
                  .read<LandingScreenBloc>()
                  .add(const LandingCheckFirstStart());
              return const MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Scaffold(
                  body: Center(child: CircularProgressIndicator()),
                ),
              );
            case LandingScreenOnBoarding:
              return const MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: SafeArea(child: LandingScreen()));
            case LandingScreenHome:
              return MaterialApp(
                theme: basicTheme(),
                home: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
                  builder: (context, state) {
                    return Scaffold(
                      bottomNavigationBar: FABBottomAppBar(
                        backgroundColor: secondaryColor,
                        color: Colors.white,
                        selectedColor: primaryColor,
                        notchedShape: const CircularNotchedRectangle(),
                        items: [
                          FABBottomAppBarItem(
                              iconData: const AssetImage(
                                  "assets/icons/menu/home.png"),
                              selectedIconData: const AssetImage(
                                  "assets/icons/menu/home_selected.png"),
                              text: 'Home'),
                          FABBottomAppBarItem(
                              iconData: const AssetImage(
                                  "assets/icons/menu/school.png"),
                              selectedIconData: const AssetImage(
                                  "assets/icons/menu/school_selected.png"),
                              text: 'Ma Classe'),
                        ],
                        onTabSelected: (index) {
                          if (index == 0) {
                            context.read<BottomNavigationBloc>().add(
                                const NavigateTo(navBarItem: NavbarItem.home));
                          } else if (index == 1) {
                            context.read<BottomNavigationBloc>().add(
                                const NavigateTo(
                                    navBarItem: NavbarItem.classroom));
                          }
                        },
                      ),
                      floatingActionButtonLocation:
                          FloatingActionButtonLocation.centerDocked,
                      floatingActionButton: SizedBox(
                        width: 64.0,
                        height: 64.0,
                        child: FloatingActionButton(
                          backgroundColor: primaryColor,
                          shape: const CircleBorder(),
                          elevation: 0.0,
                          child: Padding(
                              padding: const EdgeInsets.all(14),
                              child: Image.asset("assets/icons/menu/call.png")),
                          onPressed: () {
                            context.read<BottomNavigationBloc>().add(
                                const NavigateTo(
                                    navBarItem: NavbarItem.presence));
                          },
                        ),
                      ),
                      body: SafeArea(
                        child: BlocBuilder<BottomNavigationBloc,
                            BottomNavigationState>(
                          builder: (context, state) {
                            return IndexedStack(
                              index: state.index,
                              children: [SkillsScreen(), LandingScreen()],
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
                // theme: flavorConfig.theme,
                //initialRoute: "/",
                debugShowCheckedModeBanner: false,
              );
            default:
              return Container();
          }
        },
      ),
    );
  }
}
