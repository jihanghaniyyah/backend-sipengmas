import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as convert;
import 'package:syncfusion_flutter_charts/charts.dart';

class StackedChart extends StatefulWidget {
  const StackedChart({Key? key}) : super(key: key);

  @override
  State<StackedChart> createState() => _StackedChartState();
}

class _StackedChartState extends State<StackedChart> {
  late List<DataPengmas> _chartData;
  late TooltipBehavior _tooltipBehavior;

  Future viewJumlahDataProdi()  async {
    var url = Uri.https(
        'project.mis.pens.ac.id',
        '/mis116/sipengmas/p3m/barstatistik.php/',
        {'function': 'showJumlahProdi'});
    var response = await http.get(url);
    var jsonData = convert.jsonDecode(response.body);
    print(jsonData['data']);
    if (response.statusCode == 200) {
      return jsonData['data'];
    } else {
      print('Null');
    }
  }

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
                      yValueMapper: (DataPengmas exp, _) => exp.prodi,
                      name: 'Prodi',
                      markerSettings: MarkerSettings(isVisible: true),
                    ),
                    StackedColumnSeries<DataPengmas, String>(
                      dataSource: _chartData,
                      xValueMapper: (DataPengmas exp, _) => exp.expenseCategory,
                      yValueMapper: (DataPengmas exp, _) => exp.rc,
                      name: 'RC',
                      markerSettings: MarkerSettings(isVisible: true),
                    ),
                    StackedColumnSeries<DataPengmas, String>(
                      dataSource: _chartData,
                      xValueMapper: (DataPengmas exp, _) => exp.expenseCategory,
                      yValueMapper: (DataPengmas exp, _) => exp.rg,
                      name: 'RG',
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
      DataPengmas('Prodi', 55, 0, 0),
      DataPengmas('RC', 0, 45, 0),
      DataPengmas('RG', 0, 0, 20),
    ];
    return chartData;
  }
}

class DataPengmas {
  DataPengmas(this.expenseCategory, this.prodi, this.rc, this.rg);
  final String expenseCategory;
  final num prodi;
  final num rc;
  final num rg;
}
