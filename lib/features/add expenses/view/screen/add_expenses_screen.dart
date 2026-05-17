import 'package:expense_tracker/core/constants/text.dart';
import 'package:expense_tracker/core/widgets/buttons/elevated_button.dart';
import 'package:expense_tracker/core/widgets/fields/custom_text_field.dart';
import 'package:expense_tracker/features/add%20expenses/view_model/add_expenses_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddExpensesScreen extends GetView<AddExpensesController> {
  const AddExpensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(backgroundColor: Colors.grey.shade100),

        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                AppTexts.addExpenses,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 16),

              // Amount Field
              SizedBox(
                width: Get.width * 0.7,
                child: AppFormField(
                  controller: controller.amountController,
                  prefixIcon: Icons.euro,
                  hintText: AppTexts.amount,
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
              ),
              const SizedBox(height: 32),

              // Category Field
              AppFormField(
                readOnly: true,
                controller: controller.categoryController,
                prefixIcon: Icons.list,
                hintText: AppTexts.category,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Date Selection Field
              AppFormField(
                readOnly: true,
                controller: controller.dateController,
                isDate: true,
                prefixIcon: Icons.date_range,
                hintText: AppTexts.date,
              ),
              const SizedBox(height: 30),

              // Save Button
              AppElevatedButton(
                onPressed: () {},
                child: Text(
                  AppTexts.save,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
