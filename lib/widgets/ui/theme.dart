import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

const kSecondaryColor = Color(0xFF8B94BC);
const kGreenColor = Color(0xFF6AC259);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Color(0xFFC1C1C1);
const kBlackColor = Color(0xFF101010);
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const double kDefaultPadding = 20.0;

Color backgroundColor = Color(0xffFFFFFF);
Color blueColor = Color(0xff12317C);
Color blueColor2 = Color(0xff1555ED);
Color greyColor = Color(0xff948989);
Color whiteColor = Color(0xffF6EFEF);
Color greyyColor = Color(0xffB0A6A6);
Color orangeColor = Color(0xffF26D22);
Color purpleColor = Color(0xffB916F2);
Color redColor = Color(0xffED1515);
Color greyColor2 = Color(0xff726A6A);
Color blackColor = Color(0xff030314);
Color backgroundDashboard = Color(0xffFFFCEB);
Color greenColor = Color(0xff3AB186);

class AppColor {
  static final pripmaryColor = Color(0xFF252c4a);
  static final secondaryColor = Color(0xFF117eeb);
}

// padding splash screen 1, 2 , 3
double splashScreenLeft = 24;
double splashScreenTop = 30;

// padding menu Login Page
double paddingMenuLogin = 24;

// padding semua homepage, riwayat pesan, profile page, biodata page dll

double edge = 20;

// style untuk menu login page (nim dan password)
TextStyle labelStyleLogin = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: blueColor2,
);

TextStyle hintStyleLogin = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: greyColor,
);

TextStyle forgetPasswordStyle = GoogleFonts.poppins(
  fontSize: 14,
  color: greyyColor,
  fontWeight: FontWeight.w600,
);

// style di homepage admin
TextStyle nameTextStyle = GoogleFonts.poppins(
  color: blueColor2,
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

TextStyle cardTitleTextStyle = GoogleFonts.poppins(
  color: whiteColor,
  fontSize: 12,
  fontWeight: FontWeight.bold,
);

// style praktik ibadah
TextStyle seeDetailTextStyle = GoogleFonts.poppins(
  color: blueColor2,
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

TextStyle infoPracticePrayerTextStyle = GoogleFonts.poppins(
  color: blackColor,
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

TextStyle infoStatisticTextStyle = GoogleFonts.poppins(
  color: Color(0xffFFFFFF),
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

// style statistik

// style lainnya
TextStyle blueTextStyle = GoogleFonts.poppins(
  color: blueColor,
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

TextStyle captionTextStyle = GoogleFonts.poppins(
  color: greyColor,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

TextStyle buttonTextStyle = GoogleFonts.poppins(
  color: backgroundColor,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

TextStyle menuTextStyle = GoogleFonts.poppins(
  color: Colors.black,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

TextStyle captionMenuTextStyle = GoogleFonts.poppins(
  color: Colors.white,
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

TextStyle userTextStyle = GoogleFonts.openSans(
  color: Color(0xff948989),
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

TextStyle infoTextStyle = GoogleFonts.poppins(
  color: Color(0xff726A6A),
  fontSize: 15,
  fontWeight: FontWeight.bold,
);

TextStyle captionInfoTextStyle = GoogleFonts.poppins(
  color: Color(0xff726A6A),
  fontSize: 14,
  fontWeight: FontWeight.w600,
);

TextStyle biodataTitle = GoogleFonts.poppins(
  color: Color(0xff3761C3),
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

TextStyle biodataHint = GoogleFonts.poppins(
  color: Color(0xff5E5454),
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

TextStyle titleInfoPractice = GoogleFonts.poppins(
  color: Color(0xffFFFFFF),
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

TextStyle nameInfoPractice = GoogleFonts.poppins(
  color: Color(0xffFFFFFF),
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

TextStyle mainMenuStyle = GoogleFonts.openSans(
    color: Color(0xffFFFFFF), fontSize: 14, fontWeight: FontWeight.bold);

TextStyle appBarStyle = GoogleFonts.poppins(
  color: Color(0xffFFFFFF),
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
