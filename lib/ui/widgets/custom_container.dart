import 'package:flutter/material.dart';
import 'package:pengabdianmasyarakat/shared/theme.dart';

class CustomContainer extends StatelessWidget {
  final String event;
  final String name;
  final String major;
  final String date;

  final String eventName;
  final String aName;
  final String majorOrSchema;
  final String time;

  const CustomContainer({
    Key? key,
    required this.event,
    required this.name,
    required this.major,
    required this.date,
    required this.eventName,
    required this.aName,
    required this.majorOrSchema,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, height: 1000,
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
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Text(
                      eventName,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF34395E),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Text(
                      aName,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF34395E),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Text(
                      majorOrSchema,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF34395E),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Text(
                      time,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF34395E),
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
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Text(
                      event,
                      style: purpleTextStyle.copyWith(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: double.infinity,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                    child: Text(
                      name,
                      textAlign: TextAlign.start,
                      style: purpleTextStyle.copyWith(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Text(
                      major,
                      style: purpleTextStyle.copyWith(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Text(
                      date,
                      style: purpleTextStyle.copyWith(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
