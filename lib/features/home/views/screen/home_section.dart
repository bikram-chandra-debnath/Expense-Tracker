
import 'package:expense_tracker/features/home/views/widgets/app_bar.dart';
import 'package:expense_tracker/features/home/views/widgets/balance_card.dart';
import 'package:expense_tracker/features/home/views/widgets/transaction_list.dart';
import 'package:expense_tracker/features/home/views/widgets/transactions_tilte.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSection extends GetView {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //  Upper bar
              MyAppBar(),

              SizedBox(height: 20),

              // card
              BalanceCard(),

              const SizedBox(height: 40),

              // Transactions title and view all
              TransactionsTitle(),
              SizedBox(height: 20),
              // transaction list
              TransactionList(),
            ],
          ),
        ),
      ),
    );
  }
}
