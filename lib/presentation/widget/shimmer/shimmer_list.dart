import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/shimmer/custom_shimmer.dart';

class ShimmerList extends StatelessWidget {
  final CustomShimmer customShimmer;
  final int itemCount;
  final Axis? scrollDirection;
  final ScrollPhysics? physics;
  final bool? shrinkWrap;
  const ShimmerList({
    Key? key,
    required this.customShimmer,
    required this.itemCount,
    this.scrollDirection,
    this.physics,
    this.shrinkWrap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: physics,
        shrinkWrap: shrinkWrap ?? false,
        itemCount: itemCount,
        scrollDirection: scrollDirection ?? Axis.horizontal,
        itemBuilder: (index, context) {
          return customShimmer;
        });
  }
}
