import 'package:flutter/material.dart';
import 'package:pengabdianmasyarakat/shared/theme.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_app_bar.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_container.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_drawer.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_button_2.dart';

class ReadDataPenawaranJudulPage extends StatefulWidget {
  const ReadDataPenawaranJudulPage({Key? key}) : super(key: key);

  @override
  State<ReadDataPenawaranJudulPage> createState() => _ReadDataPenawaranJudulPageState();
}

class _ReadDataPenawaranJudulPageState extends State<ReadDataPenawaranJudulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: SafeArea(
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
                      'Detail Data Penawaran Judul',
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
                    child: Container(
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            color: Colors.black,
                            offset: Offset(0, 0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 50, 0, 0),
                                    child: Text(
                                      'Judul Penawaran',
                                      style: purpleTextStyle.copyWith(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 50, 0, 0),
                                    child: Text(
                                      'Kategori',
                                      style: purpleTextStyle.copyWith(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 50, 0, 0),
                                    child: Text(
                                      'Ketentuan',
                                      style: purpleTextStyle.copyWith(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 50, 0, 0),
                                    child: Text(
                                      'Status',
                                      textAlign: TextAlign.end,
                                      style: purpleTextStyle.copyWith(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 50, 0, 0),
                                    child: Text(
                                      'Narahubung',
                                      textAlign: TextAlign.end,
                                      style: purpleTextStyle.copyWith(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 50, 0, 0),
                                    child: Text(
                                      'Pengabdian Masyarakat\nIT 2021',
                                      style: purpleTextStyle.copyWith(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 32, 0, 0),
                                    child: Text(
                                      'Umi Sa\'adah',
                                      textAlign: TextAlign.start,
                                      style: purpleTextStyle.copyWith(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 50, 0, 0),
                                    child: Text(
                                      'Teknik Informatika',
                                      style: purpleTextStyle.copyWith(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 50, 0, 0),
                                    child: Text(
                                      '2021-12-30',
                                      style: purpleTextStyle.copyWith(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 50, 0, 0),
                                    child: Text(
                                      'Jihan',
                                      style: purpleTextStyle.copyWith(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
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
