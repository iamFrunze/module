import 'package:flutter/material.dart';
import 'package:module/ui_utils/app_colors.dart';

class AppTypography {
  static const lmLabelSmall = TextStyle(
    color: AppColors.lmAppBarWidgetsColor,
  );
  static const lmElevatedBtn = TextStyle(
    color: AppColors.lmTextElevatedBtnColor,
    fontSize: 12,
  );
  static const lmTitleMedium = TextStyle(
    color: AppColors.lmTitleMediumColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static const lmBodyMedium = TextStyle(
    color: AppColors.lmGreyColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const lmTitleSmall = TextStyle(
    color: AppColors.lmGrey3Color,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const lmLabelMedium = TextStyle(
    color: AppColors.lmGrey3Color,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );
}
