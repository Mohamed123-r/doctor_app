import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    this.isSecondary = false,
    required this.onPressed,
    this.isLoading = false,  this.isMin = false,
  });

  final String title;

  final VoidCallback onPressed;
  final bool isSecondary;
  final bool isLoading ;
  final bool isMin ;



  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: isSecondary ? AppColors.white : AppColors.primary100,
      height: isMin ? 40 : 56,
      minWidth: isMin ? 150 : double.infinity,
      shape: RoundedRectangleBorder(
        side: isSecondary
            ? BorderSide(color: AppColors.primary100)
            : BorderSide.none,

        borderRadius: BorderRadius.circular(
            isMin ? 32 : 16),
      ),
      child:
        isLoading ? CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            isSecondary ? AppColors.primary100 : AppColors.white,
          ),
        ) :
      Text(
        title,
        style:
        isMin ? AppTextStyles.medium14(
          context,
        ).copyWith(color: isSecondary ? AppColors.primary100 : AppColors.white) :

        AppTextStyles.semibold16(
          context,
        ).copyWith(color: isSecondary ? AppColors.primary100 : AppColors.white),
      ),
    );
  }
}
