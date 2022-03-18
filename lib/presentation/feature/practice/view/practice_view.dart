import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class PracticeView extends StatelessWidget {
  const PracticeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  left: 0,
                  child:
                      Container(color: secondaryColor, height: 20, width: 20)),
              Positioned(
                  right: 0,
                  child:
                      Container(color: secondaryColor, height: 20, width: 20)),
              Center(
                child: Container(color: primaryColor, height: 100, width: 100),
              )
            ],
          )),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Flex(
                crossAxisAlignment: CrossAxisAlignment.center,
                direction: Axis.vertical,
                children: [
                  Flexible(
                      child: Container(
                          height: 8, width: 60, color: secondaryColor)),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Text("Windle"),
                                Text("Alternants"),
                              ],
                            )),
                        Expanded(
                          flex: 2,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    color: secondaryColor,
                                    height: 12,
                                    width: 60),
                                Container(
                                    color: secondaryColor,
                                    height: 12,
                                    width: 60),
                                Container(
                                    color: secondaryColor,
                                    height: 12,
                                    width: 60),
                              ]),
                        ),
                        Expanded(
                            flex: 4,
                            child: Column(
                              children: [
                                Text("Description"),
                                Text("Hello a tous incroyable cette app.")
                              ],
                            ))
                      ],
                    ),
                  ))
                ]),
          ))
        ],
      ),
    );
  }
}
