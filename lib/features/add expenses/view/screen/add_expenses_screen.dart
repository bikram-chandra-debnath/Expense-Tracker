import 'package:expense_tracker/core/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddExpensesScreen extends GetView {
  const AddExpensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor:  Theme.of(context).colorScheme.surface,
      ),

      body: Column(
        children: [

          Text(AppTexts.addExpenses, )

        ],
      ),
    );
  }
}