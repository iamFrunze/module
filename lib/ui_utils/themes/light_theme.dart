import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module/ui_utils/app_colors.dart';
import 'package:module/ui_utils/app_typography.dart';
import 'package:module/ui_utils/themes/themes.dart';

class LightThemeData extends AppTheme {
  static ThemeData get _base => ThemeData.light();

  @override
  ThemeData buildTheme() {
    return _base.copyWith(
      backgroundColor: AppColors.lmBackgroundColor,
      scaffoldBackgroundColor: AppColors.lmBackgroundColor,
      primaryColor: AppColors.lmPrimaryColor,
      colorScheme: buildColorScheme(),
      brightness: Brightness.light,
      appBarTheme: buildAppBarTheme(),
      elevatedButtonTheme: buildElevatedButtonTheme(),
      textTheme: buildTextTheme(),
    );
  }

  @override
  AppBarTheme buildAppBarTheme() {
    return _base.appBarTheme.copyWith(
      color: AppColors.lmPrimaryColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.lmPrimaryColor,
      ),
      actionsIconTheme: const IconThemeData(
        color: AppColors.lmAppBarWidgetsColor,
      ),
      toolbarTextStyle: AppTypography.lmLabelSmall,
    );
  }

  @override
  TextTheme buildTextTheme() {
    return _base.textTheme.copyWith(
      titleMedium: AppTypography.lmTitleMedium,
      titleSmall: AppTypography.lmTitleSmall,
      bodyMedium: AppTypography.lmBodyMedium,
      labelMedium: AppTypography.lmLabelMedium,
    );
  }

  @override
  ElevatedButtonThemeData buildElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(AppTypography.lmElevatedBtn),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.lmGreyColor;
            } else {
              return AppColors.lmElevatedBtnColor;
            }
          },
        ),
      ),
    );
  }

  @override
  ColorScheme buildColorScheme() {
    return _base.colorScheme.copyWith(
      primary: AppColors.lmPrimaryColor,
      onSecondary: AppColors.lmGreyColor,
    );
  }
}
