import 'package:flutter/material.dart';
import 'package:module/ui_utils/app_colors.dart';

class AppTypography {
  static const lmLabelSmall = TextStyle(
    color: AppColors.lmAppBarWidgetsColor,
  );
  static const lmElevatedBtn = TextStyle(
    color: AppColors.lmTextElevatedBtnColor,
  );
  static const lmTitleMedium = TextStyle(
    color: AppColors.lmTitleMediumColor,
    fontWeight: FontWeight.w600,
  );
  static const lmBodyMedium = TextStyle(
    color: AppColors.lmGreyColor,
    fontWeight: FontWeight.w500,
  );
  static const lmTitleSmall = TextStyle(
    color: AppColors.lmGrey3Color,
    fontWeight: FontWeight.w500,
  );
  static const lmLabelMedium = TextStyle(
    color: AppColors.lmGrey3Color,
    fontWeight: FontWeight.w400,
  );
  static const lmLabelLarge = TextStyle(
    color: AppColors.blackColor,
    fontWeight: FontWeight.w400,
  );
  static const floorSelectedTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const floorUnselectedTextStyle = TextStyle(
    color: AppColors.blackColor,
    fontWeight: FontWeight.bold,
  );
}
