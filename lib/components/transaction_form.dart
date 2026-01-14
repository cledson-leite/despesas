import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController valueController = TextEditingController();
  TransactionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Título'),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(labelText: 'Valor (R\$)'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text(
                    'Nova Transação',
                    style: TextStyle(color: Colors.purple, fontSize: 16),
                  ),
                  onPressed: () => {
                    print(titleController.text),
                    print(valueController.text),
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
