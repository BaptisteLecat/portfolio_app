import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_version/new_version.dart';
import 'package:portfolio_app/data/model/mission/mission.dart';
import 'package:portfolio_app/presentation/feature/home/screen/home_screen.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/bloc/bloc/landing_screen_bloc.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/landing_screen.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/view/landing_view.dart';
import 'package:portfolio_app/presentation/feature/mission/bloc/mission_bloc.dart';
import 'package:portfolio_app/presentation/feature/practice/bloc/course_bloc.dart';
import 'package:portfolio_app/presentation/feature/practice/screen/practices_screen.dart';
import 'package:portfolio_app/presentation/feature/project/bloc/project_bloc.dart';
import 'package:portfolio_app/presentation/feature/technology/screen/technologies_screen.dart';
import 'package:portfolio_app/presentation/widget/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:portfolio_app/presentation/widget/bottom_navigation/fab_bottom_app_bar.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';
import 'package:portfolio_app/presentation/widget/theme/theme.dart';

import 'presentation/feature/practice/bloc/work_bloc.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(
        MaterialApp(debugShowCheckedModeBanner: false, home: const App())),
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

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  void initState() {
    super.initState();

    // Instantiate NewVersion manager object (Using GCP Console app as example)
    final newVersion = NewVersion();
    advancedStatusCheck(newVersion);
  }

  basicStatusCheck(NewVersion newVersion) {
    newVersion.showAlertIfNecessary(context: context);
    setState(() {});
  }

  advancedStatusCheck(NewVersion newVersion) async {
    final status = await newVersion.getVersionStatus();
    if (status != null) {
      debugPrint(status.releaseNotes);
      debugPrint(status.appStoreLink);
      debugPrint(status.localVersion);
      debugPrint(status.storeVersion);
      debugPrint(status.canUpdate.toString());
      newVersion.showUpdateDialog(
          context: context,
          versionStatus: status,
          dialogTitle: 'Nouvelle version ????',
          dialogText:
              'T??l??chargez la derni??res mise ?? jour, pour b??n??ficier des nouveaut??s.',
          dismissButtonText: "Plus tard",
          updateButtonText: "C'est parti!");
    }
  }

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
        BlocProvider<MissionBloc>(
          create: (context) => MissionBloc()..add(MissionFetchAll()),
        ),
        BlocProvider<ProjectBloc>(
          create: (context) => ProjectBloc()..add(ProjectFetchAll()),
        ),
        BlocProvider(
          create: (context) => WorkBloc()..add(WorkFetchAll()),
        ),
        BlocProvider(
          create: (context) => CourseBloc()..add(CourseFetchAll()),
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
                      extendBodyBehindAppBar: true,
                      bottomNavigationBar: CustomNavigationBar(
                        isFloating: true,
                        borderRadius: Radius.circular(18),
                        iconSize: 24.0,
                        selectedColor: Color(0xff040307),
                        strokeColor: Color(0x30040307),
                        unSelectedColor: Color(0xffacacac),
                        //backgroundColor: Colors.white,
                        items: [
                          CustomNavigationBarItem(
                            icon:
                                SvgPicture.asset("assets/icons/ui/maison.svg"),
                            title: Text("Accueil"),
                          ),
                          CustomNavigationBarItem(
                            badgeCount: 3,
                            showBadge: true,
                            icon: SvgPicture.asset(
                                "assets/icons/ui/livre-alt.svg"),
                            title: Text("Experience"),
                          ),
                          CustomNavigationBarItem(
                            icon:
                                SvgPicture.asset("assets/icons/ui/ampoule.svg"),
                            title: Text("Competence"),
                          ),
                        ],
                        currentIndex:
                            context.read<BottomNavigationBloc>().state.index,
                        onTap: (index) {
                          if (index == 0) {
                            context.read<BottomNavigationBloc>().add(
                                const NavigateTo(navBarItem: NavbarItem.home));
                          } else if (index == 1) {
                            context.read<BottomNavigationBloc>().add(
                                const NavigateTo(
                                    navBarItem: NavbarItem.practice));
                          } else if (index == 2) {
                            context.read<BottomNavigationBloc>().add(
                                const NavigateTo(navBarItem: NavbarItem.skill));
                          }
                        },
                      ),
                      body: SafeArea(
                        child: BlocBuilder<BottomNavigationBloc,
                            BottomNavigationState>(
                          builder: (context, state) {
                            return IndexedStack(
                              index: state.index,
                              children: [
                                HomeScreen(),
                                PracticesScreen(),
                                TechnologiesScreen(),
                              ],
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
