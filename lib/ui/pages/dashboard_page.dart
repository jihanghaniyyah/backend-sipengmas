import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as convert;
import 'package:pengabdianmasyarakat/shared/theme.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_app_bar.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_card.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_drawer.dart';
import 'package:pengabdianmasyarakat/ui/widgets/stacked_chart.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String searchString = "";
  TextEditingController searchController = TextEditingController();

  Future viewTotalData() async {
    var url = Uri.https(
        'project.mis.pens.ac.id',
        '/mis116/sipengmas/p3m/totaldata.php/',
        {'function': 'showTotalDataPengmas'});
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonData = convert.jsonDecode(response.body);
      return jsonData[0];
    } else {
      print('Gagal');
    }
  }

  Future viewTotalPusatRiset() async {
    var url = Uri.https(
        'project.mis.pens.ac.id',
        '/mis116/sipengmas/p3m/totaldata.php/',
        {'function': 'showTotalDataPusatRiset'});
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonData = convert.jsonDecode(response.body);
      return jsonData[0];
    } else {
      print('Gagal');
    }
  }

  Future viewDataPengmas() async {
    var url = Uri.https(
        'project.mis.pens.ac.id',
        '/mis116/sipengmas/p3m/datapengmas.php/',
        {'function': 'showDataPengmas'});
    var response = await http.get(url);
    var jsonData = convert.jsonDecode(response.body);
    // print(jsonData['data']);
    if (response.statusCode == 200) {
      return jsonData['data'];
    } else {
      print('Gagal');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
              child: Text(
                'Statistik Pengabdian Masyarakat',
                textAlign: TextAlign.start,
                style: purpleTextStyle.copyWith(
                  fontFamily: 'Poppins',
                  fontWeight: semibold,
                  fontSize: 24,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 166,
                  height: 64,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/totaldata.png',
                        width: 52,
                        height: 52,
                        fit: BoxFit.fitHeight,
                      ),
                      FutureBuilder<dynamic>(
                          future: viewTotalData(),
                          builder: (context, snapshot) {
                            if (snapshot.error != null) {
                              return Text(
                                "${snapshot.error}",
                                style: const TextStyle(fontSize: 20),
                              );
                            }
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                  child: const CircularProgressIndicator());
                            } else {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total Data',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF999999),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    '${snapshot.data["JUMLAH"]}',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF34395E),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              );
                            }
                          }),
                    ],
                  ),
                ),
                Container(
                  width: 166,
                  height: 64,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/uploadeddata.png',
                        width: 52,
                        height: 52,
                        fit: BoxFit.fitHeight,
                      ),
                      FutureBuilder<dynamic>(
                          future: viewTotalPusatRiset(),
                          builder: (context, snapshot) {
                            if (snapshot.error != null) {
                              return Text(
                                "${snapshot.error}",
                                style: const TextStyle(fontSize: 20),
                              );
                            }
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                  child: const CircularProgressIndicator());
                            } else {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pusat Riset',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF999999),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    '${snapshot.data["JUMLAH"]}',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF34395E),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              );
                            }
                          }),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 13, 20, 0),
              child: Container(
                width: double.infinity,
                height: 420,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(22, 0, 10, 0),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: StackedChart(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(13, 20, 0, 13),
              child: Text(
                'Data Pengabdian Masyarakat',
                style: purpleTextStyle.copyWith(
                  fontFamily: 'Poppins',
                  fontWeight: semibold,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
              child: Container(
                width: double.infinity,
                constraints: const BoxConstraints(maxHeight: double.infinity),
                decoration: BoxDecoration(
                  color: Color(0xFFF7F7F7),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            searchString = value;
                          });
                        },
                        controller: searchController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Masukkan Judul Pengmas",
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    FutureBuilder<dynamic>(
                      future: viewDataPengmas(),
                      builder: (context, snapshot) {
                        if (snapshot.error != null) {
                          return Text(
                            "${snapshot.error}",
                            style: const TextStyle(fontSize: 20),
                          );
                        }
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                              child: const CircularProgressIndicator());
                        } else {
                          return Container(
                            child: ListView.builder(
                              physics: const AlwaysScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (BuildContext context, index) {
                                return snapshot.data[index]["JUDUL"]
                                        .contains(searchString)
                                    ? CustomBar(
                                        event:
                                            '${snapshot.data[index]["JUDUL"]}',
                                        name:
                                            '${snapshot.data[index]["NAMA_PEGAWAI"]}',
                                        major:
                                            '${snapshot.data[index]["KATEGORI"]}',
                                        pusatriset:
                                            '${snapshot.data[index]["NAMA"]}',
                                        // date: '${snapshot.data[index]["TAHUN_PELAKSANAAN"]}',
                                        onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //     builder: (context) =>
                                          //         ReadDataProgramStudiPage(),
                                          //   ),
                                          // );
                                        })
                                    : Container();
                              },
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
