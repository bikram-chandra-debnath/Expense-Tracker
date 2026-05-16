import 'package:expense_tracker/core/constants/colors.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.child,
    required this.onPressed,
    
    this.foregroundColor = AppColors.white,
  });

  final Widget child;
  final VoidCallback onPressed;
  final Color  foregroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: kToolbarHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.outline.withValues(alpha: 0.5),
            blurRadius: 8,
            spreadRadius: 0.5,
            offset: Offset(6, 4),
          ),
        ],
        gradient: LinearGradient(
          transform: GradientRotation(180 / 4),
          colors: [AppColors.primary, AppColors.secondary, AppColors.tertiary],
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(

          backgroundColor: Colors.transparent,
          foregroundColor: foregroundColor,
          
        ),
        child: child,
      ),
    );
  }
}
