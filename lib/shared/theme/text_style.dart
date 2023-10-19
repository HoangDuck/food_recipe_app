import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static const String fontFamily = 'Helvetica';
  static TextStyle fontPopin = GoogleFonts.getFont('Lato');

  static TextStyle customTextStyle(
      {double size = 16.0,
      Color color = AppColors.white,
      FontWeight fontWeight = FontWeight.w600}) {
    return GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: size.sp,
      color: color,
    );
  }

  /// Text style for body
  static const TextStyle bodyLg = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodySm = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle bodyXs = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w300,
  );

  /// Text style for heading

  static const TextStyle h1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle h4 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  static TextStyle onBoardBold600 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: AppColors.white,
  );

  // static const TextStyle onBoardBold400 = TextStyle(
  //   fontWeight: FontWeight.w400,
  //   fontSize: 16,
  //   color: Colors.white,
  // );

  static TextStyle onBoardBold400 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColors.white,
  );

  static TextStyle onBoardBold600BigSize = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 56.sp,
    color: AppColors.white,
  );

  static TextStyle homeBoldh4 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    color: AppColors.titleBoldH4,
  );

  static TextStyle hintTextStyleSearch = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColors.textHintColor,
  );

  static TextStyle hintTextStyleSearchSmall = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColors.textHintColor,
  );

  static TextStyle poppinsH5Bold = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    color: AppColors.titleBoldColor,
  );

  static TextStyle poppinsH4Bold = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    color: AppColors.titleBoldColor,
  );

  static TextStyle poppinsLabelBold = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: AppColors.buttonPrimaryNoIconLargeColor,
  );

  static TextStyle poppinsLabelBoldV4 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: AppColors.buttonPrimaryNoIconLargeColor,
  );

  static TextStyle poppinsLabelBoldV2 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: AppColors.titleBoldColor,
  );

  static TextStyle poppinsLabelBoldV5 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColors.titleBoldColor,
  );

  static TextStyle poppinsLabelBoldV3 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
    color: AppColors.titleBoldColor,
  );

  static TextStyle poppinsParagraphBold = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize:16.sp,
    color: AppColors.titleBoldColor,
  );

  static TextStyle ratingTextStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: AppColors.white,
  );

  static TextStyle poppinsSmallRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColors.white,
  );

  static TextStyle poppinsSmallRegularV2 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColors.titleSmallRegular,
  );

  static TextStyle poppinsSmallRegularV3 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColors.titleSmallRegular,
  );

  static TextStyle poppinsSmallBold = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
    color: AppColors.titleSmallBold,
  );

  static TextStyle poppinsSmallBoldWhite = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
    color: AppColors.white,
  );

  static TextStyle poppinsTinyRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 10.sp,
    color: AppColors.titleSmallRegular,
  );

  static TextStyle poppinsParagraphBoldV2 =  GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: AppColors.authorTitleColor,
  );

  static TextStyle poppinsParagraphBoldV3 =  GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    color: AppColors.authorTitleColor,
  );
}