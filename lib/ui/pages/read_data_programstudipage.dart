import 'package:flutter/material.dart';
import 'package:pengabdianmasyarakat/shared/theme.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_app_bar.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_drawer.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_button_2.dart';

class ReadDataProgramStudiPage extends StatelessWidget {
  const ReadDataProgramStudiPage({Key? key}) : super(key: key);

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
                      'Data Pengabdian Masyarakat Program Studi',
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
                                      'Judul',
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
                                      'Nama Ketua',
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
                                      'Jurusan',
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
                                      'Waktu\nPelaksanaan',
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
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      105, 0, 20, 0),
                                  child: CustomButton2(
                                    title: 'Unduh File',
                                    width: 87,
                                    onPressed: () {},
                                  ),

                                  //TODO: Button Unduh File
                                ),
                                CustomButton2(
                                  title: 'Unduh SK',
                                  width: 87,
                                  onPressed: () {},
                                ),
                                //TODO: Button Unduh SK
                              ],
                            ),
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

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'dart:convert' as convert;
// import 'package:pengabdianmasyarakat/shared/theme.dart';
// import 'package:pengabdianmasyarakat/ui/widgets/custom_app_bar.dart';
// import 'package:pengabdianmasyarakat/ui/widgets/custom_drawer.dart';
// import 'package:pengabdianmasyarakat/ui/widgets/custom_button_2.dart';
// import 'dart:io';
// import 'dart:isolate';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// // import 'package:siapa/koordinator/judulmahasiswa.dart';
// // import 'package:siapa/mahasiswa/detailjudul.dart';
// // import 'package:siapa/mahasiswa/judul.dart';
// // import 'package:dropdown_search/dropdown_search.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;
// import 'dart:async';
// // import '../models/namadosen.dart';
// // import '../models/prioritas.dart';
// // import 'package:flutter_downloader/flutter_downloader.dart';
// import 'package:path_provider/path_provider.dart';
// // import 'package:permission_handler/permission_handler.dart';
// // import 'package:url_launcher/url_launcher.dart';
// // import 'package:file_picker/file_picker.dart';
// // import 'package:flutter_session_manager/flutter_session_manager.dart';
//
// class ReadDataProgramStudiPage extends StatefulWidget {
//   final String idpeng;
//
//   const ReadDataProgramStudiPage({Key? key, required this.idpeng}) : super(key: key);
//
//   @override
//   State<ReadDataProgramStudiPage> createState() =>
//       _ReadDataProgramStudiPageState();
// }
//
// class _ReadDataProgramStudiPageState extends State<ReadDataProgramStudiPage> {
//
//   Future viewDatabyID() async {
//     try {
//       String id_pengmas = widget.idpeng;
//       print(id_pengmas);
//       var url = Uri.http(
//           'project.mis.pens.ac.id', '/mis116/sipengmas/p3m/datapengmas.php/',
//           {'function': 'showDataPengmasbyID'});
//       var response = await http.get(url);
//       var jsonData = convert.jsonDecode(response.body);
//       if (response.statusCode == 200) {
//         return jsonData['data'];
//       } else {
//         print('Gagal');
//       }
//     }
//     catch (e) {
//       print("Data tidak ada $e");
//       return null;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(),
//       drawer: CustomDrawer(),
//       body: SafeArea(
//         child: GestureDetector(
//           onTap: () => FocusScope.of(context).unfocus(),
//           child: Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               color: Colors.white,
//             ),
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisSize: MainAxisSize.max,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(13, 13, 0, 13),
//                     child: Text(
//                       'Detail Data Pengabdian Masyarakat',
//                       textAlign: TextAlign.start,
//                       style: purpleTextStyle.copyWith(
//                         fontFamily: 'Poppins',
//                         fontWeight: semibold,
//                         fontSize: 24,
//                       ),
//                     ),
//                   ),
//                   // FutureBuilder<dynamic>(
//                   //     future: viewDatabyID(),
//                   //     builder: (context, snapshot){
//                   //       if (snapshot.error != null) {
//                   //         return Text(
//                   //           "${snapshot.error}",
//                   //           style: const TextStyle(fontSize: 20),
//                   //         );
//                   //       }
//                   //       if (snapshot.connectionState ==
//                   //           ConnectionState.waiting) {
//                   //         return const Center(
//                   //             child: const CircularProgressIndicator());
//                   //       } else {
//                   //         return Container(
//                   //           child: ListView.builder(
//                   //             scrollDirection: Axis.vertical,
//                   //             shrinkWrap: true,
//                   //             itemCount: 1,
//                   //             itemBuilder: (BuildContext context, index){
//                   //               return
//                                   Container(
//                                   child: Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
//                                     child: Container(
//                                       width: double.infinity,
//                                       constraints: const BoxConstraints(
//                                           maxHeight: double.infinity),
//                                       decoration: BoxDecoration(
//                                         color: Color(0xFFEEEEEE),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             blurRadius: 1,
//                                             color: Colors.black,
//                                             offset: Offset(0, 0),
//                                           )
//                                         ],
//                                         borderRadius: BorderRadius.circular(10),
//                                       ),
//                                       child: Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         mainAxisAlignment: MainAxisAlignment.start,
//                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                         children: [
//                                           Row(
//                                             mainAxisSize: MainAxisSize.max,
//                                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                               Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 mainAxisAlignment: MainAxisAlignment.start,
//                                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                                 children: [
//                                                   Padding(
//                                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                                         0, 50, 0, 0),
//                                                     child: Text(
//                                                       'Judul',
//                                                       style: purpleTextStyle.copyWith(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight: FontWeight.w500,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                                         0, 50, 0, 0),
//                                                     child: Text(
//                                                       'Nama Pegawai',
//                                                       style: purpleTextStyle.copyWith(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight: FontWeight.w500,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                                         0, 50, 0, 0),
//                                                     child: Text(
//                                                       'Kategori',
//                                                       style: purpleTextStyle.copyWith(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight: FontWeight.w500,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                                         0, 50, 0, 0),
//                                                     child: Text(
//                                                       'Pusat\nRiset',
//                                                       style: purpleTextStyle.copyWith(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight: FontWeight.w500,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                                         0, 50, 0, 0),
//                                                     child: Text(
//                                                       'Tahun\nPelaksanaan',
//                                                       textAlign: TextAlign.end,
//                                                       style: purpleTextStyle.copyWith(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight: FontWeight.w500,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                                         0, 50, 0, 0),
//                                                     child: Text(
//                                                       'Latar\nBelakang',
//                                                       style: purpleTextStyle.copyWith(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight: FontWeight.w500,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                                         0, 50, 0, 0),
//                                                     child: Text(
//                                                       'Tujuan',
//                                                       style: purpleTextStyle.copyWith(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight: FontWeight.w500,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                                         0, 50, 0, 0),
//                                                     child: Text(
//                                                       'Hasil',
//                                                       style: purpleTextStyle.copyWith(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight: FontWeight.w500,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                                         0, 50, 0, 0),
//                                                     child: Text(
//                                                       'Kendala',
//                                                       style: purpleTextStyle.copyWith(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight: FontWeight.w500,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                                         0, 50, 0, 50),
//                                                     child: Text(
//                                                       'Kesimpulan dan\nSaran',
//                                                       style: purpleTextStyle.copyWith(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight: FontWeight.w500,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                               Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 mainAxisAlignment: MainAxisAlignment.start,
//                                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                                 children: [
//                                                   Padding(
//                                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                                         0, 50, 0, 0),
//                                                     child: Text(
//                                                       "JUDUL",
//                                                       style: purpleTextStyle.copyWith(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight: FontWeight.w500,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   SizedBox(
//                                                     height: 5,
//                                                   ),
//                                                   Padding(
//                                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                                         0, 32, 0, 0),
//                                                     child: Text(
//                                                       "Nama Peggawi",
//                                                       textAlign: TextAlign.start,
//                                                       style: purpleTextStyle.copyWith(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight: FontWeight.w500,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                                         0, 50, 0, 0),
//                                                     child: Text(
//                                                       "Katefa",
//                                                       style: purpleTextStyle.copyWith(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight: FontWeight.w500,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                                         0, 50, 0, 50),
//                                                     child: Text(
//                                                       "nama",
//                                                       style: purpleTextStyle.copyWith(
//                                                         fontFamily: 'Poppins',
//                                                         fontSize: 12,
//                                                         fontWeight: FontWeight.w500,
//                                                       ),
//                                                     ),
//                                                   ),
//                                         Padding(
//                                           padding: EdgeInsetsDirectional.fromSTEB(
//                                               0, 50, 0, 50),
//                                           child: Text(
//                                             "aksjd",
//                                             style: purpleTextStyle.copyWith(
//                                               fontFamily: 'Poppins',
//                                               fontSize: 12,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                           ),
//                                         ),
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                   //             }
//                   //           )
//                   //         );
//                   //       }
//                   // })
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
