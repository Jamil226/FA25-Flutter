// Importing Flutter material design library
import 'package:flutter/material.dart';


import 'package:my_first_app/helpers/db_helper.dart';
import 'add_expense.dart';
import 'update_expense.dart';

// This screen displays the list of all expenses
class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  // Creating an object of DBHelper to interact with SQLite database
  final dbHelper = DBHelper();

  // This list will store all expenses fetched from the database
  List<Map<String, dynamic>> expenses = [];

  // -------------------------------
  // Function to get all expenses from the database
  // -------------------------------
  void fetchExpenses() async {
    // Await means: wait until data is fetched completely
    final data = await dbHelper.getExpenses();

    // Updating the UI when data is ready
    setState(() {
      expenses = data;
    });
  }

  // -------------------------------
  // Function to delete an expense by ID
  // -------------------------------
  void deleteExpense(int id) async {
    await dbHelper.deleteExpense(id);
    // Fetch updated list after deleting an expense
    fetchExpenses();
  }

  // -------------------------------
  // Called when the screen is first loaded
  // -------------------------------
  @override
  void initState() {
    super.initState();
    fetchExpenses(); // Load all expenses when app starts
  }

  // -------------------------------
  // The build() method defines what appears on the screen
  // -------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Expenses'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),

      // If no expenses yet, show a message
      body: expenses.isEmpty
          ? const Center(child: Text('No expenses added yet.'))

      // Otherwise, show a scrollable list of expenses
          : ListView.builder(
        itemCount: expenses.length, // total expenses
        itemBuilder: (context, index) {
          final expense = expenses[index];

          // Convert stored string date back to DateTime format
          final date = DateTime.parse(expense['date']);
          final formattedDate =
              "${date.day}-${date.month}-${date.year}"; // Simple date format

          return Card(
            margin:
            const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: ListTile(
              // Expense title
              title: Text(expense['title']),

              // Display amount and formatted date
              subtitle: Text(
                "Amount: PKR. ${expense['amount']}\nDate: $formattedDate",
              ),
              isThreeLine: true,

              // Buttons (Edit + Delete) on the right side
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Edit button
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.teal),
                    onPressed: () async {
                      // Open UpdateExpense screen and pass current data
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => UpdateExpense(
                            id: expense['id'],
                            title: expense['title'],
                            amount: expense['amount'],
                          ),
                        ),
                      );

                      // If update was successful, refresh the list
                      if (result == true) fetchExpenses();
                    },
                  ),

                  // Delete button
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => deleteExpense(expense['id']),
                  ),
                ],
              ),
            ),
          );
        },
      ),

      // Floating button to add a new expense
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Open AddExpense screen when "+" button is pressed
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddExpense()),
          );

          // If user added something, refresh the list
          if (result == true) fetchExpenses();
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
    );
  }
}
