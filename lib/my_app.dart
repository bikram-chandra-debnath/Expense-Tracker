

//import 'package:expense_tracker/screen/home/views/home_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.light(
          background: Colors.grey.shade100,
          onBackground: Colors.black,
          primary: Color(0xff00B2E7),
          secondary: Color(0xffE064f7),
          tertiary: Color(0xffff8d6c),
          outline: Colors.grey.shade400,
        )
      ),
     //home: HomeScreen(),
    );
  }
}