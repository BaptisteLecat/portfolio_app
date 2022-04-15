import 'package:flutter/material.dart';
import 'package:portfolio_app/domain/entity/work/work.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class WorkView extends StatelessWidget {
  final Work work;
  const WorkView({Key? key, required this.work}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Stack(
                children: [
                  ClipPath(
                      clipper: BackgroundClipper(),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                      )),
                  Column(
                    children: [
                      SizedBox(height: size.height / 8),
                      Row(
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
                              child: CircleAvatar(
                                child: Image.network(
                                  work.picture!,
                                  fit: BoxFit.fill,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Container(color: primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 100,
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
                          SizedBox(
                            height: 120,
                            child: JobInfo(
                                locationName: "${work.location!.label}",
                                contractLabel: "${work.contract!.label}",
                                time: "${work.time}"),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Column(
                            children: [
                              SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Description",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(color: secondaryColor)),
                                    SizedBox(height: 14),
                                    Text("${work.description}",
                                        textAlign: TextAlign.justify,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Entreprise",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(color: secondaryColor)),
                                    SizedBox(height: 14),
                                    Text("${work.company!.description}",
                                        textAlign: TextAlign.justify,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Missions",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(color: secondaryColor)),
                                  SizedBox(height: 14),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
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
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.white)),
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
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.white)),
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
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.white)),
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
