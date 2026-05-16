
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionsTitle extends GetView {
  const TransactionsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transactions",
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "View All",
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).colorScheme.outline,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

