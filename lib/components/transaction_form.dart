import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController valueController = TextEditingController();

  final void Function(String, double) onSubmit;
  TransactionForm(this.onSubmit, {super.key});

  _handleTextField(String title, String valueString) {
    final value = double.tryParse(valueString) ?? 0.0;
    onSubmit(title, value);
  }

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
                  onPressed: () => _handleTextField(
                    titleController.text,
                    valueController.text,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
