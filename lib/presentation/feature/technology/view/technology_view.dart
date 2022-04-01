import 'package:flutter/material.dart';
import 'package:portfolio_app/domain/entity/technology/technology.dart';

class TechnologyView extends StatelessWidget {
  final Technology technology;
  const TechnologyView({Key? key, required this.technology}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.4),
                            offset: const Offset(0, -3),
                            blurRadius: 10,
                            spreadRadius: 2),
                      ],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                ),
              )
            ],
          ),
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(0, 5),
                            blurRadius: 10,
                            spreadRadius: 2),
                      ],
                    ),
                    height: 140,
                    width: 150,
                    child: const Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.developer_mode,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  )),
              Expanded(
                  flex: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Text(
                          "${technology.title}",
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(color: Colors.black),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "${technology.description}",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Flex(
                          direction: Axis.vertical,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Projets utilisant cette Technologie",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Row(children: [
                                Container(
                                  height: 130,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.4),
                                            offset: const Offset(1, -1),
                                            blurRadius: 10,
                                            spreadRadius: 1),
                                      ],
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      )),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .primaryColor
                                                .withOpacity(0.4),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(30))),
                                        child: Container(
                                          margin: const EdgeInsets.all(16.0),
                                          child: const Icon(
                                            Icons.arrow_back,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text("NodeJS",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .primaryColor))
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
