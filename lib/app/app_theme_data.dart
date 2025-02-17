import 'package:bjp/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData get lightThemeData {
    return ThemeData(
      colorSchemeSeed: appColors.themeColor,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: appColors.themeColor,
      ),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        //elevation: 3,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 28.0,
            letterSpacing: 1.7,
            color: Colors.black),
        titleSmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
            letterSpacing: 0.7,
            color: Colors.grey),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        //labelStyle: 'Email Address',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: appColors.themeColor,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appColors.themeColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appColors.themeColor),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: appColors.themeColor,
          fixedSize: Size.fromWidth(double.maxFinite),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          textStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16.0,
          ),
          padding: EdgeInsets.symmetric(vertical: 12.0),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: appColors.themeColor,
        ),
      ),
    );
  }
}
