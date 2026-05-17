import 'package:expense_tracker/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

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
    final dateController = DateController.instance;
    return TextFormField(
      controller: controller,
      readOnly: isDate,
      onTap: isDate
          ? () async {
              DateTime? newDate = await showDatePicker(
                context: context,
                initialDate: dateController.selectedDate.value,
                firstDate: DateTime.now().subtract(Duration(days: 365)),
                lastDate: DateTime.now(),
              );

              if (newDate != null) {
                controller?.text = DateFormat("dd/MM/yyyy").format(newDate);
                dateController.setDate(newDate);
              }
            }
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

class DateController extends GetxController {
  static DateController get instance => Get.find<DateController>();

  var selectedDate = DateTime.now().obs;

  void setDate(DateTime date) {
    selectedDate.value = date;
  }
}
