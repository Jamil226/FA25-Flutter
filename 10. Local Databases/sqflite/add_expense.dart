import 'package:flutter/material.dart';
import 'package:my_first_app/helpers/db_helper.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  final dbHelper = DBHelper();

  void saveExpense() async {
    if (_titleController.text.isEmpty || _amountController.text.isEmpty) return;

    final data = {
      'title': _titleController.text,
      'amount': double.parse(_amountController.text),
      'date': DateTime.now().toString(),
    };

    await dbHelper.insertExpense(data);
    Navigator.pop(context, true); // Go back with success flag
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Expense'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: saveExpense,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Save Expense', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
