
import 'package:expense_tracker/data/data.dart';
import 'package:expense_tracker/features/home/views/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionList extends GetView {
  const TransactionList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
    
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => TransactionsTile(
          name: myTransactionsData[index]["name"],
          color: myTransactionsData[index]["color"],
          icon: myTransactionsData[index]["icon"],
          amount: myTransactionsData[index]["totalAmount"],
          date: myTransactionsData[index]["date"],
        ),
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemCount:   myTransactionsData.length >= 4 ? 4 : myTransactionsData.length,
      ),
    );
  }
}
