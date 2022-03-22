import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Flexible(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Bonjour"), Text("Je suis Baptiste Lecat")],
                ),
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(12)),
                )
              ],
            ),
          ),
        ),
        const Expanded(
          flex: 2,
          child: CodeTimeChart(),
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mes missions préférées",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: secondaryColor, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          Expanded(
                            child: Column(
                              children: const [
                                Expanded(child: MissionCard()),
                                SizedBox(
                                  height: 14,
                                ),
                                Expanded(child: MissionCard()),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: Column(
                              children: const [
                                Expanded(child: MissionCard()),
                                SizedBox(
                                  height: 14,
                                ),
                                Expanded(child: MissionCard()),
                              ],
                            ),
                          )
                        ]))
                  ]),
            )),
      ],
    )));
  }
}

class MissionCard extends StatelessWidget {
  const MissionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.red,
              height: 16,
              width: 24,
            ),
            Text(
              "Soft Delete",
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}

class CodeTimeChart extends StatelessWidget {
  const CodeTimeChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(14)),
        width: 220,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "12 heures",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: secondaryColor, fontWeight: FontWeight.bold),
              ),
            ),
            Flexible(
              child: SfCartesianChart(
                  plotAreaBorderWidth: 0,
                  // Initialize category axis
                  legend: Legend(
                      alignment: ChartAlignment.near,
                      position: LegendPosition.bottom,
                      isVisible: false),
                  primaryXAxis: CategoryAxis(
                    //Hide the gridlines of x-axis
                    majorGridLines: MajorGridLines(width: 0),
                    //Hide the axis line of x-axis
                    axisLine: AxisLine(width: 0),
                  ),
                  primaryYAxis: NumericAxis(
                      //Hide the gridlines of y-axis
                      majorGridLines: MajorGridLines(width: 0),
                      //Hide the axis line of y-axis
                      axisLine: AxisLine(width: 0)),
                  /*title: ChartTitle(
                      text: "Temps de programmation ces 7 derniers jours",
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: secondaryColor),
                      alignment: ChartAlignment.near),*/
                  series: <ChartSeries<SalesData, String>>[
                    ColumnSeries<SalesData, String>(
                        name: "Temps en heures",
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                        spacing: 0.5,
                        dataLabelSettings: DataLabelSettings(
                            textStyle: Theme.of(context).textTheme.bodyText2!),
                        // Bind data source
                        pointColorMapper: (SalesData sales, int index) {
                          if (sales.year == "Di") {
                            return primaryColor;
                          }
                        },
                        dataSource: <SalesData>[
                          SalesData('Lu', 35),
                          SalesData('Ma', 28),
                          SalesData('Me', 34),
                          SalesData('Je', 32),
                          SalesData('Ve', 40),
                          SalesData('Sa', 40),
                          SalesData('Di', 40),
                        ],
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        borderRadius: BorderRadius.all(Radius.circular(4)))
                  ]),
            ),
          ],
        ));
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
