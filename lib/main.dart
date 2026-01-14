import 'package:despesas/components/transaction_user.dart';
import 'package:flutter/material.dart';

void main() => runApp(ExpenseApp());

class ExpenseApp extends StatelessWidget {
  const ExpenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            'Despesas Pessoais',
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(child: Text('Gráficos')),
              TransactionUser(),
            ],
          ),
        ),
      ),
    );
  }
}
