import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as convert;
import 'package:pengabdianmasyarakat/shared/theme.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_app_bar.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_container.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_drawer.dart';
import 'package:pengabdianmasyarakat/ui/pages/dashboard_page.dart';
import 'package:pengabdianmasyarakat/ui/pages/read_data_researchcenter.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_button_2.dart';

class ReadDataResearchCenterPage extends StatefulWidget {
  const ReadDataResearchCenterPage({Key? key}) : super(key: key);

  @override
  State<ReadDataResearchCenterPage> createState() => _ReadDataResearchCenterPageState();
}

class _ReadDataResearchCenterPageState extends State<ReadDataResearchCenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: Container(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(13, 13, 0, 13),
                    child: Text(
                      'Data Pengabdian Masyarakat Research Center',
                      textAlign: TextAlign.start,
                      style: purpleTextStyle.copyWith(
                        fontFamily: 'Poppins',
                        fontWeight: semibold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    child: CustomContainer(
                      event: 'Pengabdian Masyarakat\nIT 2021',
                      name: 'Umi Sa\'adah',
                      major: 'Teknik Informatika',
                      date: '2021-12-30',
                      eventName: 'Judul',
                      aName: 'Nama Ketua',
                      majorOrSchema: 'Jurusan',
                      time: 'Waktu\nPelaksanaan',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}