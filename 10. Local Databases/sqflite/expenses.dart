import 'package:flutter/material.dart';
import 'package:my_first_app/helpers/db_helper.dart';
import 'add_expense.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  final dbHelper = DBHelper();

  List<Map<String, dynamic>> expenses = [];

  void fetchExpenses() async {
    final data = await dbHelper.getExpenses();
    setState(() {
      expenses = data;
    });
  }

  void deleteExpense(int id) async {
    await dbHelper.deleteExpense(id);
    fetchExpenses();
  }

  @override
  void initState() {
    super.initState();
    fetchExpenses();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Expenses'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: expenses.isEmpty
          ? const Center(child: Text('No expenses added yet.'))
          : ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          final expense = expenses[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: ListTile(
              title: Text(expense['title']),
              subtitle: Text('Amount: ${expense['amount']}'),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () => deleteExpense(expense['id']),
              ),
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddExpense()),
          );
          if (result == true) fetchExpenses();
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
    );
  }
}
