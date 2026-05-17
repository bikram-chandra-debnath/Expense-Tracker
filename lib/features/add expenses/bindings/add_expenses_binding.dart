import 'package:expense_tracker/core/widgets/fields/custom_text_field.dart';
import 'package:expense_tracker/features/add%20expenses/view_model/add_expenses_controller.dart';
import 'package:get/get.dart';

class AddExpensesBinding extends Bindings{
  @override
  void dependencies() {
  Get.lazyPut<AddExpensesController>( () =>  AddExpensesController(),);
  Get.lazyPut<DateController>(  () =>  DateController(),);
  }

}