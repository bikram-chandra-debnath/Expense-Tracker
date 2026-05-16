
import 'package:expense_tracker/core/constants/colors.dart';
import 'package:flutter/material.dart';

class AppFormField extends StatelessWidget {
  const AppFormField({
    super.key,
    this.isDate = false,
    this.controller,
    this.hintText,
    this.prefixIcon,
    this.borderRadius = 12,
    this.suffixIcon,
     this.isPassword = false,
  });

  final bool isDate, isPassword;
  final TextEditingController? controller;
  final String? hintText;
  final IconData? prefixIcon;
  final double borderRadius;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: isDate,
      onTap: isDate
          ? () => showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(Duration(days: 365)),
              lastDate: DateTime.now().add(Duration(days: 365)),
            )
          : null,
      obscureText: isPassword,
      style: TextStyle(color: AppColors.black, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        suffixIcon: suffixIcon,
        prefixIcon: Icon(prefixIcon, size: 16, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
