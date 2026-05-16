
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileSection extends GetView {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Profile",
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }

}
