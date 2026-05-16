import 'package:expense_tracker/core/constants/text.dart';
import 'package:expense_tracker/features/home/view_model/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AppNavigationBar extends GetView<HomeController> {
  const AppNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      child: Obx(
        ()=> BottomNavigationBar(
          currentIndex:controller.currentPage.value,
          onTap: (value) {
            controller.currentPage.value = value;
           
          },
        
          backgroundColor: Colors.white,
          
          showUnselectedLabels: false,
          elevation: 3,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: AppTexts.home,
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              label: AppTexts.profile,
            ),
          ],
        ),
      ),
    );
  }
}
