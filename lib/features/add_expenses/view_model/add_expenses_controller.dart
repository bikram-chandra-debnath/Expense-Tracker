import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddExpensesController extends GetxController {

  static AddExpensesController get instance => Get.find<AddExpensesController>();

  final TextEditingController categoryController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController amountController = TextEditingController();



  @override
  void onInit() {
    dateController.text = DateFormat("dd/MM/yyyy").format(DateTime.now());
    super.onInit();
  }

  RxBool iconExpand = false.obs;




}
