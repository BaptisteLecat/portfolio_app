import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';
import 'package:shimmer/shimmer.dart';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final EdgeInsets? margin;
  const CustomShimmer(
      {Key? key, this.width, this.height, this.borderRadius, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: margin,
        child: Shimmer.fromColors(
          baseColor: secondaryColorLessOpacity,
          highlightColor: Theme.of(context).scaffoldBackgroundColor,
          period: const Duration(seconds: 3),
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            ),
          ),
        ),
      );
}
