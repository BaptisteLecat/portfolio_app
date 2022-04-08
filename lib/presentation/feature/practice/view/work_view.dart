import 'package:flutter/material.dart';
import 'package:portfolio_app/domain/entity/work/work.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class WorkView extends StatelessWidget {
  final Work work;
  const WorkView({Key? key, required this.work}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Stack(
                children: [
                  ClipPath(
                      clipper: BackgroundClipper(),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                      )),
                  Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 112,
                              width: 112,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Padding(
                                padding: EdgeInsets.all(6),
                                child: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: primaryColor)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 8,
                          child: Column(
                            children: [
                              Expanded(
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "${work.title}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2!
                                            .copyWith(
                                                color: secondaryColor,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "${work.company!.name}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                color: secondaryColorBrighter,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                child: JobInfo(
                                    locationName: "${work.location!.label}",
                                    contractLabel: "${work.contract!.label}",
                                    time: "${work.time}"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(children: [
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 48,
                                              decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                    child: Text(
                                                  "Description",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline6!
                                                      .copyWith(
                                                          color: Colors.white),
                                                )),
                                              ),
                                            ),
                                            Container(
                                              height: 48,
                                              decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                    child: Text(
                                                  "Entreprise",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline6!
                                                      .copyWith(
                                                          color: Colors.white),
                                                )),
                                              ),
                                            ),
                                            Container(
                                              height: 48,
                                              decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                    child: Text(
                                                  "Missions",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline6!
                                                      .copyWith(
                                                          color: Colors.white),
                                                )),
                                              ),
                                            )
                                          ]),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 20.0,
                                              right: 20.0,
                                              top: 20.0,
                                            ),
                                            child: Text("${work.description}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                              )
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JobInfo extends StatelessWidget {
  final String locationName;
  final String contractLabel;
  final String time;
  const JobInfo({
    Key? key,
    required this.locationName,
    required this.contractLabel,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Localisation",
                          style: Theme.of(context).textTheme.headline6),
                      Text(
                        locationName,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  )),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 52,
                        width: 4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white))
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Contrat",
                          style: Theme.of(context).textTheme.headline6),
                      Text(
                        contractLabel,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  )),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 52,
                        width: 4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white))
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Durée",
                          style: Theme.of(context).textTheme.headline6),
                      Text(
                        time,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height / 8);

    Offset firstControlPoint = Offset(size.width / 10, (size.height / 6) * 1.8);
    Offset secondControlPoint = Offset(size.width, size.height / 10);
    Offset endPositionPoint = Offset(size.width, (size.height / 6) * 2);
    path.cubicTo(
        firstControlPoint.dx,
        firstControlPoint.dy,
        secondControlPoint.dx,
        secondControlPoint.dy,
        endPositionPoint.dx,
        endPositionPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height / 4);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(oldDelegate) => true;
}
