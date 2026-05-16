


import 'package:expense_tracker/core/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {


  static final lightTheme = ThemeData(       
        colorScheme: const ColorScheme.light(
          surface: AppColors.background,
          onSurface:AppColors.onBackground,
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          tertiary: AppColors.tertiary,
          outline: Colors.grey,
        )
      );
  static final darkTheme = ThemeData(       
        colorScheme: const ColorScheme.light(
          surface: AppColors.background,
          onSurface:AppColors.onBackground,
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          tertiary: AppColors.tertiary,
          outline: Colors.grey,
        )
      );
}