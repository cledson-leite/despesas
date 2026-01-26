import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:despesas/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  const TransactionList(this.transactions, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: transactions.isEmpty
        ? Column(
          children: [
            SizedBox(height: 20,),
            Text(
              'Nenhuma Transação cadastrada!',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: Image.asset(
                'assets/images/waiting.png'
              ),
            )
          ],
        )
        : ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final Transaction item = transactions[index];
          return Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).colorScheme.primary, width: 2),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'R\$ ${item.value.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: Theme.of(context).textTheme.titleMedium
                    ),
                    Text(
                      DateFormat('dd MMM y').format(item.date),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
