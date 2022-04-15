import 'package:flutter/material.dart';
import 'package:portfolio_app/domain/service/wakatime/entity/language/language.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GithubData extends StatelessWidget {
  final List<Language> wakatimeLanguages;
  const GithubData({
    Key? key,
    required this.wakatimeLanguages,
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
            Expanded(
                child: SfCircularChart(series: <CircularSeries>[
              // Render pie chart
              PieSeries<ChartData, String>(
                  dataSource: wakatimeLanguages.map((e) {
                    return ChartData(e.name!, e.percent!);
                  }).toList(),
                  pointColorMapper: (ChartData data, _) => data.color,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                  dataLabelMapper: (ChartData data, _) => data.x,
                  radius: '78%',
                  dataLabelSettings: DataLabelSettings(
                    // Renders the data label
                    isVisible: true,
                  ))
            ])),
          ],
        ));
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
