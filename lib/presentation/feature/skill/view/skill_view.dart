import 'package:flutter/material.dart';

class SkillView extends StatelessWidget {
  const SkillView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            flex: 2,
            child: Center(
                child: Icon(
              Icons.developer_board,
              color: Colors.white,
              size: 60,
            )),
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
              child: Column(
                children: [
                  Flexible(
                    child: Text(
                      "NodeJS",
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: Colors.black),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Node.js est une plateforme logicielle libre en JavaScript, orientée vers les applications réseau évènementielles hautement concurrentes qui doivent pouvoir monter en charge. Elle utilise la machine virtuelle V8, la librairie libuv pour sa boucle d'évènements, et implémente sous licence MIT les spécifications CommonJS.",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
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
                                  color: Colors.black.withOpacity(0.4),
                                  offset: const Offset(1, -1),
                                  blurRadius: 10,
                                  spreadRadius: 1),
                            ],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.4),
                                  borderRadius: const BorderRadius.all(
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
                                        color: Theme.of(context).primaryColor))
                          ],
                        ),
                      )
                    ]),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
