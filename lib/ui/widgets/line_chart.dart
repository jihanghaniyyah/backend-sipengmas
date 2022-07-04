import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatefulWidget {
  const LineChart({Key? key}) : super(key: key);

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  late List<DataPengmas> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.all(10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: SfCartesianChart(
                  legend: Legend(isVisible: true),
                  tooltipBehavior: _tooltipBehavior,
                  series: <ChartSeries>[
                    StackedLineSeries<DataPengmas, String>(
                      dataSource: _chartData,
                      xValueMapper: (DataPengmas exp, _) => exp.month,
                      yValueMapper: (DataPengmas exp, _) => exp.submission,
                      name: '2021',
                      markerSettings: MarkerSettings(isVisible: true),
                      color: Colors.red,
                    ),
                  ],
                  primaryXAxis: CategoryAxis(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<DataPengmas> getChartData() {
    final List<DataPengmas> chartData = [
      DataPengmas('1', 11),
      DataPengmas('2', 13),
      DataPengmas('3', 18),
      DataPengmas('4', 21),
      DataPengmas('5', 21),
      DataPengmas('6', 25),
      DataPengmas('7', 20),
      DataPengmas('8', 24),
      DataPengmas('9', 25),
      DataPengmas('10', 26),
      DataPengmas('11', 32),
      DataPengmas('12', 35),
    ];
    return chartData;
  }
}

class DataPengmas {
  DataPengmas(this.month, this.submission);
  final String month;
  final num submission;
}
