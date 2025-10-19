// Importing the sqflite package to work with SQLite databases in Flutter
import 'package:sqflite/sqflite.dart';
// Importing path package to build correct file paths for database
import 'package:path/path.dart';

// ----------------------------------------------
// This class will manage all database operations
// ----------------------------------------------
class DBHelper {
  // Private variable to store the database instance
  static Database? _database;

  // Getter that returns the current database instance
  // If database is already open, return it
  // Otherwise, call initDB() to create/open it
  Future<Database> get database async {
    if (_database != null) return _database!; // already exists
    _database = await initDB(); // create if not
    return _database!;
  }

  // ----------------------------------------------
  // Function to initialize (create/open) the database
  // ----------------------------------------------
  Future<Database> initDB() async {
    // Get the default database directory path (depends on device)
    final dbPath = await getDatabasesPath();

    // Join the directory path with database file name
    final path = join(dbPath, 'expenses.db');

    // Open or create the database at this path
    return await openDatabase(
      path,
      version: 1, // version of database
      onCreate: (db, version) async {
        // Run SQL query to create a table named 'expenses'
        await db.execute('''
          CREATE TABLE expenses (
            id INTEGER PRIMARY KEY AUTOINCREMENT,  -- unique id
            title TEXT,                            -- expense name/title
            amount REAL,                           -- expense amount
            date TEXT                              -- expense date
          )
        ''');
      },
    );
  }

  // ----------------------------------------------
  // INSERT operation — to add a new expense
  // ----------------------------------------------
  Future<int> insertExpense(Map<String, dynamic> data) async {
    final db = await database; // get database instance
    // Insert data into 'expenses' table
    // Returns the ID of the newly inserted row
    return await db.insert('expenses', data);
  }

  // ----------------------------------------------
  // FETCH operation — to get all saved expenses
  // ----------------------------------------------
  Future<List<Map<String, dynamic>>> getExpenses() async {
    final db = await database;
    // Query all rows from 'expenses' table ordered by ID (newest first)
    return await db.query('expenses', orderBy: 'id DESC');
  }

  // ----------------------------------------------
  // UPDATE operation — to edit an existing expense
  // ----------------------------------------------
  Future<int> updateExpense(int id, Map<String, dynamic> data) async {
    final db = await database;
    // Update record where ID matches
    return await db.update(
      'expenses', // table name
      data,       // updated data
      where: 'id = ?', // condition
      whereArgs: [id], // parameter value
    );
  }

  // ----------------------------------------------
  // DELETE operation — to remove an expense by ID
  // ----------------------------------------------
  Future<int> deleteExpense(int id) async {
    final db = await database;
    // Delete record where ID matches
    return await db.delete(
      'expenses',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
