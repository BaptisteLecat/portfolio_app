import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_app/src/features/experiences/widget/experience_card.dart';

class ExperiencesScreen extends StatefulWidget {
  const ExperiencesScreen({super.key});

  @override
  State<ExperiencesScreen> createState() => _ExperiencesScreenState();
}

class _ExperiencesScreenState extends State<ExperiencesScreen> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: _Background(scrollController: scrollController),
            ),
            CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  surfaceTintColor: Colors.transparent,
                  elevation: 0,
                  primary: true,
                  toolbarHeight: 40,
                  floating: true,
                  snap: true,
                ),
                const SliverSpace(300),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: StaggeredGrid.count(
                        crossAxisCount: 4,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        children: [
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2.5,
                            child: ExperienceCard(),
                          ),
                          const StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 1,
                            child: SizedBox(),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2.5,
                            child: ExperienceCard(),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2.5,
                            child: ExperienceCard(),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2.5,
                            child: ExperienceCard(),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    const maxHeight = 600.0;
    const minHeight = 400.0; // Taille minimale de l'image
    const fadeStart = 150.0; // Point à partir duquel commencer le fondu
    const fadeEnd = 220.0; // Point où l'image est complètement transparente

    final screenSize = MediaQuery.of(context).size;
    final maxWidth = screenSize.width * 0.66;
    final minWidth = screenSize.width * 0.5;

    return ListenableBuilder(
      listenable: scrollController,
      builder: (context, _) {
        final offset =
            scrollController.hasClients ? scrollController.offset : 0;
        double scale = 1 - (offset / maxHeight).clamp(0, 1).toDouble();
        scale = scale.clamp(0, 1);
        final height = maxHeight * scale;
        final width = maxWidth * scale;

        // Calcul de l'opacité pour le fondu
        double opacity = 1.0;
        if (offset > fadeStart) {
          opacity = 1 -
              ((offset - fadeStart) / (fadeEnd - fadeStart))
                  .clamp(0, 1)
                  .toDouble();
        }
        print(opacity);

        return Stack(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: height > minHeight
                      ? height
                      : minHeight, // Ne pas descendre en dessous de la taille minimale
                  child: Container(
                    height: height > minHeight
                        ? height
                        : minHeight, // Ne pas descendre en dessous de la taille minimale
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Image.asset(
                          "assets/images/baptiste_debout.png",
                          fit: BoxFit.fitHeight,
                          width: width > minWidth
                              ? width
                              : minWidth, // Ne pas descendre en dessous de la taille minimale
                        ),
                        Container(
                          // Ajout d'un filtre pour assombrir l'image
                          // Qui fait la width de l'image

                          //gradient color
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(1),
                                Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(1),
                                Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0.7),
                                Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0.4),
                                Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0.2),
                                Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0.1),
                                Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0.05),
                                Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0.02),
                                Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            Positioned(
              top: 20,
              left: 20,
              child: Opacity(
                opacity: opacity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bonjour,",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      "Je suis Baptiste",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class SliverSpace extends StatelessWidget {
  const SliverSpace(
    this.size, {
    super.key,
    this.direction = Axis.vertical,
  });

  final double size;
  final Axis direction;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: direction == Axis.vertical ? size : null,
        width: direction == Axis.horizontal ? size : null,
      ),
    );
  }
}
