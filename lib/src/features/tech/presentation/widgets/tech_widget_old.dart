import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TechWidget extends StatelessWidget {
  final String title;
  final String level;
  final String iconPath;
  final Color color;
  final double scale;
  const TechWidget({
    super.key,
    required this.title,
    required this.level,
    required this.iconPath,
    required this.color,
    this.scale = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: color,
            width: 2.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        height: 122,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Spacer(),
                  Expanded(
                    flex: 2,
                    child: SvgPicture.asset(
                      "assets/images/svg/tech_background.svg",
                      color: color,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Flexible(
                                flex: 4,
                                child: Text(
                                  title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                  maxLines: 3,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                          Text(
                            level,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        iconPath,
                        height: 80 * scale,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
