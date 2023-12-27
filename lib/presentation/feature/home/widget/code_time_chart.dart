import 'package:flutter/material.dart';
import 'package:portfolio_app/common/functions/date_functions.dart';
import 'package:portfolio_app/domain/service/wakatime/entity/wakatime_code_activity/wakatime_code_activity.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CodeTimeChart extends StatelessWidget {
  final List<WakatimeCodeActivity> wakatimeCodeActivities;
  const CodeTimeChart({
    Key? key,
    required this.wakatimeCodeActivities,
  }) : super(key: key);

  int _averageWeekCodeTime() {
    int hours = 0;
    wakatimeCodeActivities.forEach((e) {
      if (e.range != null && e.range!.end != null && e.grandTotal != null) {
        hours += e.grandTotal!.roundedHours();
      }
    });

    return hours;
  }

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
                "${_averageWeekCodeTime()} heures",
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
                      rangePadding: ChartRangePadding.round,
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
                  series: <CartesianSeries<WakatimeData, String>>[
                    ColumnSeries<WakatimeData, String>(
                        name: "Temps en heures",
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                        spacing: 0.3,
                        dataLabelSettings: DataLabelSettings(
                            textStyle: Theme.of(context).textTheme.bodyText2!),
                        // Bind data source
                        pointColorMapper: (WakatimeData data, int index) {
                          if (data.day ==
                              weekDayFromWeekIndex(DateTime.now().weekday)) {
                            return primaryColor;
                          }
                        },
                        dataSource: wakatimeCodeActivities.map((e) {
                          if (e.range != null &&
                              e.range!.end != null &&
                              e.grandTotal != null) {
                            return WakatimeData(
                                weekDayFromWeekIndex(e.range!.end!.weekday),
                                double.parse(
                                    e.grandTotal!.roundedHours().toString()));
                          } else {
                            return WakatimeData("NO", 12);
                          }
                        }).toList(),
                        /*dataSource: <WakatimeData>[
                          WakatimeData('Lu', 6),
                          WakatimeData('Ma', 10),
                          WakatimeData('Me', 4),
                          WakatimeData('Je', 13),
                          WakatimeData('Ve', 6),
                          WakatimeData('Sa', 8),
                          WakatimeData('Di', 12),
                        ],*/
                        xValueMapper: (WakatimeData data, _) => data.day,
                        yValueMapper: (WakatimeData data, _) => data.time,
                        borderRadius: BorderRadius.all(Radius.circular(4)))
                  ]),
            ),
          ],
        ));
  }
}

class WakatimeData {
  WakatimeData(this.day, this.time);
  final String day;
  final double time;
}
