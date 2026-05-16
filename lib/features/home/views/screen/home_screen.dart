import 'package:expense_tracker/features/home/view_model/home_controller.dart';
import 'package:expense_tracker/features/home/views/screen/home_section.dart';
import 'package:expense_tracker/features/home/views/screen/profile_section.dart';
import 'package:expense_tracker/features/home/views/widgets/add_button.dart';
import 'package:expense_tracker/features/home/views/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Obx(
        () => controller.currentPage == 0
            ? HomeSection()
            : ProfileSection(),
      ),

      // Floating Action Bar
      floatingActionButton: FloatingAddButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // Bottom Navigation bar
      bottomNavigationBar: AppNavigationBar(),
    );
  }
}

