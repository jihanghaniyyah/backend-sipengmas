import 'package:flutter/material.dart';
import 'package:pengabdianmasyarakat/shared/theme.dart';


class CustomBar extends StatelessWidget {
  final String event;
  final String name;
  final String major;
  final String pusatriset;
  final Function() onPressed;

  const CustomBar({
    Key? key,
    required this.event,
    required this.name,
    required this.major,
    required this.pusatriset,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Color(0xFFF5F5F5),
        child: Container(
          width: 300,
          constraints: const BoxConstraints(
              maxHeight: double.infinity),

        // decoration: BoxDecoration(
        //   color: Color(0xFFEEEEEE),
        // ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(18, 13, 0, 0),
              child: Text(
                event,
                style: purpleTextStyle.copyWith(
                  fontFamily: 'Poppins',
                  fontWeight: semibold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(18, 0, 0, 0),
              child: Text(
                name,
                style: greyTextStyle.copyWith(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(18, 5, 0, 0),
              child: Text(
                major,
                style: greyTextStyle.copyWith(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(18, 5, 0, 13),
              child: Text(
                pusatriset,
                style: greyTextStyle.copyWith(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    )
    ,
    );
  }
}
