import 'package:flutter/material.dart';
import 'package:pengabdianmasyarakat/shared/theme.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_app_bar.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_container.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_drawer.dart';

class ReadDataResearchGroupPage extends StatelessWidget {
  const ReadDataResearchGroupPage({Key? key}) : super(key: key);

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
                      'Data Pengabdian Masyarakat Research Group',
                      textAlign: TextAlign.start,
                      style: purpleTextStyle.copyWith(
                        fontFamily: 'Poppins',
                        fontWeight: semibold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  //TODO: Fix Text Column Bug
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    child: CustomContainer(
                      event:
                          'RT-RW Management\nInformation System \nUsing an Android-Based \nMobile Application',
                      name: 'Umi Sa\'adah',
                      major: 'Software Engineering',
                      date: '2019',
                      eventName: 'Judul',
                      aName: 'Nama Ketua',
                      majorOrSchema: 'Nama Skema',
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
