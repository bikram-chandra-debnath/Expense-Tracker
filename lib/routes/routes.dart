import 'package:expense_tracker/features/add%20expenses/view/screen/add_expenses_screen.dart';
import 'package:expense_tracker/features/home/bindings/home_binding.dart';
import 'package:expense_tracker/features/home/views/screen/home_screen.dart';
import 'package:get/get.dart';

List <GetPage> routingPages=  [
      GetPage(name: "/home", page: ()=> HomeScreen(), bindings: [HomeBinding()]),
      GetPage(name: "/addExpenses", page: ()=> AddExpensesScreen(), ),
     ];