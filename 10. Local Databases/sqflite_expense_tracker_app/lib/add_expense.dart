// Importing Flutter's material design library
import 'package:flutter/material.dart';

// Importing our local SQLite helper to perform DB operations
import 'package:my_first_app/helpers/db_helper.dart';

// -------------------------------------------------------------
// AddExpense Screen
// This screen allows users to add (insert) a new expense record
// -------------------------------------------------------------
class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

// -------------------------------------------------------------
// The State class contains form handling and DB logic
// -------------------------------------------------------------
class _AddExpenseState extends State<AddExpense> {
  // Text controllers to handle and read input from text fields
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  // Create an instance of our DBHelper class to access DB functions
  final dbHelper = DBHelper();

  // -------------------------------------------------------------
  // Function to save expense in database
  // -------------------------------------------------------------
  void saveExpense() async {
    // Simple input validation: check if both fields are not empty
    if (_titleController.text.isEmpty || _amountController.text.isEmpty) return;

    // Create a map of expense data that matches our SQLite table structure
    final data = {
      'title': _titleController.text,                 // expense name
      'amount': double.parse(_amountController.text), // amount (converted to double)
      'date': DateTime.now().toString(),              // current date/time
    };

    // Insert this data into database using DBHelper
    await dbHelper.insertExpense(data);

    // Go back to previous screen and return true as success flag
    Navigator.pop(context, true);
  }

  // -------------------------------------------------------------
  // Building the user interface of the Add Expense screen
  // -------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar for the screen
      appBar: AppBar(
        title: const Text('Add Expense'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),

      // Main body padding and layout
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Text field for entering expense title
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            // Text field for entering expense amount
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number, // restrict to numbers
              decoration: const InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Button to save the expense data
            ElevatedButton(
              onPressed: saveExpense, // when tapped, call saveExpense()
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                minimumSize: const Size(double.infinity, 50), // full width button
              ),
              child: const Text(
                'Save Expense',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
