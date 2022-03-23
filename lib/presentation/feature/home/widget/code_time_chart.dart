import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CodeTimeChart extends StatelessWidget {
  const CodeTimeChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(14)),
        width: 160,
        height: 160,
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
                          SalesData('Lu', 6),
                          SalesData('Ma', 10),
                          SalesData('Me', 4),
                          SalesData('Je', 13),
                          SalesData('Ve', 6),
                          SalesData('Sa', 8),
                          SalesData('Di', 12),
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
