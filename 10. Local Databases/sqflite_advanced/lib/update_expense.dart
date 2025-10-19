// Importing Flutter material widgets
import 'package:flutter/material.dart';

// Importing our local SQLite helper class for DB operations
import 'package:my_first_app/helpers/db_helper.dart';

// -------------------------------------------------------------
// UpdateExpense Screen
// This screen allows the user to edit/update an existing expense
// -------------------------------------------------------------
class UpdateExpense extends StatefulWidget {
  // Receiving existing expense data through constructor
  final int id;         // unique ID of expense
  final String title;   // current title
  final double amount;  // current amount

  // Constructor to initialize values (passed from previous screen)
  const UpdateExpense({
    super.key,
    required this.id,
    required this.title,
    required this.amount,
  });

  @override
  State<UpdateExpense> createState() => _UpdateExpenseState();
}

// -------------------------------------------------------------
// The State class contains the logic for updating expense
// -------------------------------------------------------------
class _UpdateExpenseState extends State<UpdateExpense> {
  // Create instance of our DBHelper class to interact with SQLite
  final dbHelper = DBHelper();

  // Controllers to manage text input for title and amount fields
  late TextEditingController _titleController;
  late TextEditingController _amountController;

  // -------------------------------------------------------------
  // initState() runs when the screen opens for the first time
  // We use it to fill text fields with current expense data
  // -------------------------------------------------------------
  @override
  void initState() {
    super.initState();

    // Pre-fill the text fields with old data
    _titleController = TextEditingController(text: widget.title);
    _amountController = TextEditingController(text: widget.amount.toString());
  }

  // -------------------------------------------------------------
  // Function to update expense data in the SQLite database
  // -------------------------------------------------------------
  void updateExpense() async {
    // Creating a map of new data values
    final newData = {
      'title': _titleController.text, // updated title
      'amount': double.parse(_amountController.text), // updated amount
      'date': DateTime.now().toString(), // refresh date to current
    };

    // Call the DBHelper function to update the record
    await dbHelper.updateExpense(widget.id, newData);

    // Go back to previous screen and return 'true' as a signal for refresh
    Navigator.pop(context, true);
  }

  // -------------------------------------------------------------
  // Building the UI of the screen
  // -------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Expense'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),

      // Screen body layout
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // TextField for expense title
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            // TextField for expense amount
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number, // only numeric input
              decoration: const InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Button to update expense and save in DB
            ElevatedButton(
              onPressed: updateExpense, // triggers database update
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Update Expense',
              style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
