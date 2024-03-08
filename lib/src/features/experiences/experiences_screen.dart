import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_app/src/features/experiences/widget/experience_card.dart';
import 'package:text_scroll/text_scroll.dart';

class ExperiencesScreen extends StatefulWidget {
  const ExperiencesScreen({super.key});

  @override
  State<ExperiencesScreen> createState() => _ExperiencesScreenState();
}

class _ExperiencesScreenState extends State<ExperiencesScreen> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: MediaQuery.of(context).size.width * 0.05,
            top: MediaQuery.of(context).size.height * 0.05,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).dividerColor.withOpacity(1),
                shape: BoxShape.circle,
              ),
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.5,
            top: MediaQuery.of(context).size.height * 0.4,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).dividerColor.withOpacity(1),
                shape: BoxShape.circle,
              ),
              height: MediaQuery.of(context).size.width * 0.4,
              width: MediaQuery.of(context).size.width * 0.4,
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.7,
            top: MediaQuery.of(context).size.height * 0.8,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).dividerColor.withOpacity(1),
                shape: BoxShape.circle,
              ),
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 615, sigmaY: 615),
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 52,
              left: 15,
              right: 15,
            ),
            child: _Background(
              scrollController: scrollController,
            ),
          ),
          Column(
            children: [
              Spacer(
                flex: 3,
              ),
              Flexible(flex: 7, child: ClipRRect(child: BlurShadow())),
            ],
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
            Positioned(
              top: 20,
              left: 0,
              child: Opacity(
                opacity: 1,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TextScrolled(
                        "   BAPTISTE    LECAT",
                        textDirection: TextDirection.ltr,
                      ),
                      TextScrolled(
                        "   DEVELOPPEUR    ARCHITECTE",
                        textDirection: TextDirection.rtl,
                      ),
                      TextScrolled(
                        "   FLUTTER    GOOGLE CLOUD",
                        textDirection: TextDirection.ltr,
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                        SizedBox(
                            width: width > minWidth
                                ? width
                                : minWidth, // Ne pas descendre en dessous de la taille minimale
                            child: Image.asset(
                              "assets/images/baptiste_debout.png",
                              fit: BoxFit.fitHeight,
                            )),
                      ],
                    ),
                  ),
                )),
          ],
        );
      },
    );
  }
}

class TextScrolled extends StatelessWidget {
  final String text;
  final TextScrollMode mode;
  final TextDirection textDirection;
  const TextScrolled(
    this.text, {
    super.key,
    this.mode = TextScrollMode.endless,
    this.textDirection = TextDirection.ltr,
  });

  @override
  Widget build(BuildContext context) {
    return TextScroll(
      text.toUpperCase(),
      mode: mode,
      fadedBorder: true,
      textDirection: textDirection,
      velocity: Velocity(pixelsPerSecond: Offset(120, 0)),
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
          fontWeight: FontWeight.w900,
          fontSize: 68,
          letterSpacing: 6,
          height: 1.4),
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

class BlurShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return RadialGradient(
          center: Alignment.topCenter,
          radius: 1,
          colors: <Color>[
            Theme.of(context).scaffoldBackgroundColor,
            Colors.transparent
          ],
          stops: [0.4, 0.8],
        ).createShader(bounds);
      },
      blendMode: BlendMode.dstOut,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 170, sigmaY: 170),
        child: Container(
            alignment: Alignment.center,
            color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8)),
      ),
    );
  }
}
