

import 'package:expense_tracker/features/home/view_model/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(),);
  }
}