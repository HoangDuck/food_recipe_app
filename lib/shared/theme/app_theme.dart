import 'package:flutter/material.dart';
import 'package:food_recipe_app/shared/data/local/storage_service.dart';
import 'package:food_recipe_app/shared/domain/providers/sharedpreferences_storage_service_provider.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:food_recipe_app/shared/theme/text_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appThemeProvider = StateNotifierProvider<AppThemeModeNotifier, ThemeMode>(
      (ref) {
    final storage = ref.watch(storageServiceProvider);
    return AppThemeModeNotifier(storage);
  },
);

class AppThemeModeNotifier extends StateNotifier<ThemeMode> {
  final StroageService stroageService;

  ThemeMode currentTheme = ThemeMode.light;

  AppThemeModeNotifier(this.stroageService) : super(ThemeMode.light) {
    // getCurrentTheme();
  }

}

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: AppTextStyles.fontFamily,
      primaryColor: AppColors.primary,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.lightGrey,
        error: AppColors.error,
        background: AppColors.black,
      ),
      // backgroundColor: AppColors.black,
      scaffoldBackgroundColor: AppColors.black,
      textTheme: TextThemes.darkTextTheme,
      primaryTextTheme: TextThemes.primaryTextTheme,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.black,
        titleTextStyle: AppTextStyles.h2,
      ),
    );
  }

  /// Light theme data of the app
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      textTheme: TextThemes.textTheme,
      primaryTextTheme: TextThemes.primaryTextTheme,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.lightGrey,
        error: AppColors.error,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.primary,
      ),
    );
  }
}

ColorScheme colorSchemeBottomAppBar = const ColorScheme(
    primary: Colors.white,
    brightness: Brightness.light,
    onPrimary: Colors.white,
    secondary: Color(0xff66fff9),
    onSecondary: Colors.black,
    error: Color(0xff790000),
    onError: Colors.white,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black);