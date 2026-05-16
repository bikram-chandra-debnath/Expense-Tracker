import 'package:expense_tracker/features/home/bindings/home_binding.dart';
import 'package:expense_tracker/features/home/views/screen/home_screen.dart';
import 'package:get/get.dart';

List <GetPage> routingPages=  [
      GetPage(name: "/home", page: ()=> HomeScreen(), bindings: [HomeBinding()])
     ];