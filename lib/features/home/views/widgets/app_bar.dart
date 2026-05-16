
import 'package:expense_tracker/core/constants/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBar extends GetView {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            // profile Image
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow[700],
                  ),
                ),
                Icon(
                  CupertinoIcons.person_fill,
                  size: 25,
                  color: Theme.of(context).colorScheme.onSurface.withAlpha(150),
                ),
              ],
            ),
            SizedBox(width: 8),
            // welcome and name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppTexts.welcome,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
                Text(
                  "Bikram Nath",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ],
        ),

        // settings button
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.settings)),
      ],
    );
  }
}
