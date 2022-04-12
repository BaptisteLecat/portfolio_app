import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/presentation/feature/account/screen/account_screen.dart';
import 'package:portfolio_app/presentation/feature/home/bloc/wakatime_bloc.dart';
import 'package:portfolio_app/presentation/feature/home/widget/code_time_chart.dart';
import 'package:portfolio_app/presentation/feature/home/widget/github_data.dart';
import 'package:portfolio_app/presentation/feature/home/widget/mission_list.dart';
import 'package:portfolio_app/presentation/feature/home/widget/project_card.dart';
import 'package:portfolio_app/presentation/feature/home/widget/project_list.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';
import 'package:video_player/video_player.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.asset('assets/movies/profile.mp4');

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
    _controller.setVolume(0.0);

    _controller.play();

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 20, left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bonjour",
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: secondaryColor),
                        ),
                        Text(
                          "Je suis Baptiste Lecat",
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(color: primaryColor),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccountScreen()));
                      }),
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(4),
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12)),
                            child: FutureBuilder(
                              future: _initializeVideoPlayerFuture,
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  // If the VideoPlayerController has finished initialization, use
                                  // the data it provides to limit the aspect ratio of the VideoPlayer.
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: AspectRatio(
                                      aspectRatio:
                                          _controller.value.aspectRatio,
                                      // Use the VideoPlayer widget to display the video.
                                      child: VideoPlayer(_controller),
                                    ),
                                  );
                                } else {
                                  // If the VideoPlayerController is still initializing, show a
                                  // loading spinner.
                                  return Center(
                                      child: CircularProgressIndicator());
                                }
                              },
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.red),
                              child: Center(
                                  child: Text(
                                "2",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Colors.white, fontSize: 10),
                              )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Statistiques",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: secondaryColor, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BlocBuilder<WakatimeBloc, WakatimeState>(
                          builder: (context, state) {
                            switch (state.status) {
                              case WakatimeStatus.success:
                                return CodeTimeChart(
                                  wakatimeCodeActivities:
                                      state.wakatimeCodeActivities!,
                                );
                              case WakatimeStatus.failure:
                                return Center(
                                    child: Text("Une erreur s'est produite"));
                              default:
                                return Center(
                                    child: CircularProgressIndicator());
                            }
                          },
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        GithubData(),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(child: ProjectList()),
              SizedBox(
                height: 20,
              ),
              Flexible(child: MissionList()),
            ],
          ),
        ),
      ],
    )));
  }
}
