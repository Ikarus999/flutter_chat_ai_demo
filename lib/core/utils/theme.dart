import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/app_colors.dart';

ThemeData AppTheme() {
  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.secondaryTextColor,
    brightness: Brightness.dark,
    
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.background,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColors.textColor,
        
        fontSize: 17,
      ),
      shape: Border(bottom: BorderSide(color: AppColors.borderColor, width: 2)),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
        textStyle: const TextStyle(
          
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        backgroundColor: AppColors.primaryColor,
        minimumSize: const Size(327, 56),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: AppColors.inputBackground,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(width: 2.0, color: AppColors.borderColor)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(width: 2.0, color: AppColors.errorColor)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(width: 2.0, color: AppColors.secondaryTextColor)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(width: 2.0, color: AppColors.primaryColor)),
    ),
    textTheme: GoogleFonts.robotoTextTheme()
  );
}
