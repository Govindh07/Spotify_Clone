import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColor.primary,
    scaffoldBackgroundColor: AppColor.lighBackground,
    brightness: Brightness.light,
    fontFamily: "Satoshi",
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      )
    )
  );

  static final darkTheme = ThemeData(
      primaryColor: AppColor.primary,
      scaffoldBackgroundColor: AppColor.darkBackground,
      brightness: Brightness.dark,
      fontFamily: "Satoshi",
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primary,
              elevation: 0,
              textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              )
          )
      )
  );
}