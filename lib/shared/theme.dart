import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 10.0;
double defaultRadius = 17.0;

const Color kPrimaryColor = Color(0xFF210F7A);
const Color kYellowColor = Color(0xFFF2C808);
const Color kBlackColor = Color(0xFF1F1449);
const Color kWhiteColor = Color(0xFFFFFFFF);
const Color kGreyColor = Color(0xFF57636C);
const Color kGreenColor = Color(0xFF0EC3AE);
const Color kRedColor = Color(0xFFDD4C4C);
const Color kBackgroundColor = Color(0xFFFAFAFA);
const Color kInactiveColor = Color(0xFFDBD7EC);
const Color kTransparentColor = Colors.transparent;
const Color kUnavailableColor = Color(0xFFEBECF1);
const Color kAvailableColor = Color(0xFFE0D9FF);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

TextStyle yellowTextStyle = GoogleFonts.poppins(
  color: kYellowColor,
);

FontWeight thin = FontWeight.w100;
FontWeight extraLight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight normal = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
