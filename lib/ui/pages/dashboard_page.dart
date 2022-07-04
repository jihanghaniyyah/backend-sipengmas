import 'package:flutter/material.dart';
import 'package:pengabdianmasyarakat/shared/theme.dart';
import 'package:pengabdianmasyarakat/ui/pages/read_data_programstudidetail.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_app_bar.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_card.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_drawer.dart';
import 'package:pengabdianmasyarakat/ui/widgets/stacked_chart.dart';
import 'package:pengabdianmasyarakat/ui/widgets/line_chart.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

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
                      Column(
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
                            '500',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF34395E),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
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
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upload',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF999999),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            '500',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF34395E),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
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
                            child: Text(
                              'Filter:',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          // FlutterFlowDropDown(
                          //   options: ['Option 1'],
                          //   onChanged: (val) =>
                          //       setState(() => dropDownValue3 = val),
                          //   width: 125,
                          //   height: 33,
                          //   textStyle:
                          //       FlutterFlowTheme.of(context).bodyText1.override(
                          //             fontFamily: 'Poppins',
                          //             color: Colors.black,
                          //             fontSize: 12,
                          //             fontWeight: FontWeight.w500,
                          //           ),
                          //   hintText: 'Semua Prodi',
                          //   icon: Icon(
                          //     Icons.arrow_drop_down_outlined,
                          //     color: Color(0xFF3317BE),
                          //     size: 15,
                          //   ),
                          //   fillColor: Colors.white,
                          //   elevation: 2,
                          //   borderColor: Colors.transparent,
                          //   borderWidth: 0,
                          //   borderRadius: 0,
                          //   margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          //   hidesUnderline: true,
                          // ),
                          // FlutterFlowDropDown(
                          //   options: ['Option 1'],
                          //   onChanged: (val) =>
                          //       setState(() => dropDownValue4 = val),
                          //   width: 125,
                          //   height: 33,
                          //   textStyle:
                          //       TextStyle(
                          //             fontFamily: 'Poppins',
                          //             color: Colors.black,
                          //             fontSize: 12,
                          //             fontWeight: FontWeight.w500,
                          //           ),
                          //   hintText: 'Tahun',
                          //   icon: Icon(
                          //     Icons.arrow_drop_down_outlined,
                          //     color: Color(0xFF3317BE),
                          //     size: 15,
                          //   ),
                          //   fillColor: Colors.white,
                          //   elevation: 2,
                          //   borderColor: Colors.transparent,
                          //   borderWidth: 0,
                          //   borderRadius: 0,
                          //   margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          //   hidesUnderline: true,
                          // ),
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
                            child: Text(
                              'Filter:',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          // FlutterFlowDropDown(
                          //   options: ['Option 1'],
                          //   onChanged: (val) =>
                          //       setState(() => dropDownValue3 = val),
                          //   width: 125,
                          //   height: 33,
                          //   textStyle:
                          //       FlutterFlowTheme.of(context).bodyText1.override(
                          //             fontFamily: 'Poppins',
                          //             color: Colors.black,
                          //             fontSize: 12,
                          //             fontWeight: FontWeight.w500,
                          //           ),
                          //   hintText: 'Semua Prodi',
                          //   icon: Icon(
                          //     Icons.arrow_drop_down_outlined,
                          //     color: Color(0xFF3317BE),
                          //     size: 15,
                          //   ),
                          //   fillColor: Colors.white,
                          //   elevation: 2,
                          //   borderColor: Colors.transparent,
                          //   borderWidth: 0,
                          //   borderRadius: 0,
                          //   margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          //   hidesUnderline: true,
                          // ),
                          // FlutterFlowDropDown(
                          //   options: ['Option 1'],
                          //   onChanged: (val) =>
                          //       setState(() => dropDownValue4 = val),
                          //   width: 125,
                          //   height: 33,
                          //   textStyle:
                          //       TextStyle(
                          //             fontFamily: 'Poppins',
                          //             color: Colors.black,
                          //             fontSize: 12,
                          //             fontWeight: FontWeight.w500,
                          //           ),
                          //   hintText: 'Tahun',
                          //   icon: Icon(
                          //     Icons.arrow_drop_down_outlined,
                          //     color: Color(0xFF3317BE),
                          //     size: 15,
                          //   ),
                          //   fillColor: Colors.white,
                          //   elevation: 2,
                          //   borderColor: Colors.transparent,
                          //   borderWidth: 0,
                          //   borderRadius: 0,
                          //   margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          //   hidesUnderline: true,
                          // ),
                        ],
                      ),
                    ),
                    Center(
                      child: LineChart(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(13, 20, 0, 13),
              child: Text(
                'Postingan Terbaru',
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
                height: 885,
                decoration: BoxDecoration(
                  color: Color(0xFFF7F7F7),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(22, 0, 10, 0),
                            child: Text(
                              'Show',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF999999),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            //TODO: DropdownMenu
                          ),
                          Text(
                            'entries',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF999999),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomBar(
                        event: 'Pengabdian Masyarakat IT 2021',
                        name: 'Umi Sa\'adah',
                        major: 'Teknik Informatika',
                        date: '2021-12-30',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReadDataProgramStudiPage(),
                            ),
                          );
                        }),
                    CustomBar(
                        event: 'Pengabdian Masyarakat CE 2021',
                        name: 'Sritrusta Sukaridhoto',
                        major: 'Teknik Komputer',
                        date: '2021-10-30',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReadDataProgramStudiPage(),
                            ),
                          );
                        }),
                    CustomBar(
                        event: 'Pengabdian Masyarakat DS 2021',
                        name: 'M. Udin Harun Al Rasyid',
                        major: 'Sains Data',
                        date: '2021-09-22',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReadDataProgramStudiPage(),
                            ),
                          );
                        }),
                    CustomBar(
                        event: 'Pengabdian Masyarakat Elektro...',
                        name: 'Idris Winarno',
                        major: 'Teknik Telekomunikasi',
                        date: '2021-01-10',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReadDataProgramStudiPage(),
                            ),
                          );
                        }),
                    CustomBar(
                        event: 'Pengabdian Masyarakat Elektro...',
                        name: 'Andhik Ampuh Yunanto',
                        major: 'Teknik Elektro Industri',
                        date: '2021-03-07',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReadDataProgramStudiPage(),
                            ),
                          );
                        }),
                    CustomBar(
                        event: 'Pengabdian Masyarakat Teleko...',
                        name: 'Wiratmoko Yuwono',
                        major: 'Teknik Informatika',
                        date: '2021-12-30',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReadDataProgramStudiPage(),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
              child: Text(
                'Showing 1 to 10 of 6 entries',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
