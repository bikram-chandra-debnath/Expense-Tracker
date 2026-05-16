import 'package:get/get.dart';

class HomeController extends GetxController{

  static HomeController get instance => Get.find();

  RxInt currentPage = 0.obs;
}