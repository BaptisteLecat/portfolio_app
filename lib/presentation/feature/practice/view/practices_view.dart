import 'package:flutter/material.dart';

class PracticesView extends StatelessWidget {
  const PracticesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Flex(
      direction: Axis.vertical,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Experiences professionnelles",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: ((context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 100,
                        color: Colors.red,
                        child: Row(children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white)),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    "Alternance - Flutter / Symfony",
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Septembre 2021 -  Septembre 2022",
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 2,
                                      itemBuilder: ((context, index) {
                                        return Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 4),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 6,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Symfony",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .copyWith(
                                                      color: Colors.black),
                                            ),
                                          ),
                                        );
                                      })),
                                )
                              ],
                            ),
                          )
                        ]),
                      );
                    })),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Projets personnels",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: ((context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 60,
                        width: 100,
                        color: Colors.red,
                      );
                    })),
              )
            ],
          ),
        )
      ],
    ));
  }
}
