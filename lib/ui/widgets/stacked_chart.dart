import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StackedChart extends StatefulWidget {
  const StackedChart({Key? key}) : super(key: key);

  @override
  State<StackedChart> createState() => _StackedChartState();
}

class _StackedChartState extends State<StackedChart> {
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
                    StackedColumnSeries<DataPengmas, String>(
                      dataSource: _chartData,
                      xValueMapper: (DataPengmas exp, _) => exp.expenseCategory,
                      yValueMapper: (DataPengmas exp, _) => exp.dtik,
                      name: 'DTIK',
                      markerSettings: MarkerSettings(isVisible: true),
                    ),
                    StackedColumnSeries<DataPengmas, String>(
                      dataSource: _chartData,
                      xValueMapper: (DataPengmas exp, _) => exp.expenseCategory,
                      yValueMapper: (DataPengmas exp, _) => exp.dte,
                      name: 'DTE',
                      markerSettings: MarkerSettings(isVisible: true),
                    ),
                    StackedColumnSeries<DataPengmas, String>(
                      dataSource: _chartData,
                      xValueMapper: (DataPengmas exp, _) => exp.expenseCategory,
                      yValueMapper: (DataPengmas exp, _) => exp.dtme,
                      name: 'DTME',
                      markerSettings: MarkerSettings(isVisible: true),
                    ),
                    StackedColumnSeries<DataPengmas, String>(
                      dataSource: _chartData,
                      xValueMapper: (DataPengmas exp, _) => exp.expenseCategory,
                      yValueMapper: (DataPengmas exp, _) => exp.dtmk,
                      name: 'DTMK',
                      markerSettings: MarkerSettings(isVisible: true),
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
      DataPengmas('2019', 55, 40, 45, 28),
      DataPengmas('2020', 33, 45, 54, 28),
      DataPengmas('2021', 43, 24, 20, 34),
      DataPengmas('2022', 32, 54, 23, 54),
    ];
    return chartData;
  }
}

class DataPengmas {
  DataPengmas(this.expenseCategory, this.dtik, this.dte, this.dtme, this.dtmk);
  final String expenseCategory;
  final num dtik;
  final num dte;
  final num dtme;
  final num dtmk;
}
