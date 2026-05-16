

import 'package:expense_tracker/core/Theme/theme.dart';
import 'package:expense_tracker/features/home/views/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
     initialRoute: "/home",

     getPages: [
      GetPage(name: "/home", page: ()=> HomeScreen() )
     ],
    );
  }
}