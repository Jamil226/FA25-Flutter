// These lines import the required packages and files.
import 'package:flutter/material.dart';
import 'package:my_first_app/dashboard.dart';
import 'package:my_first_app/sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';


// The main() function is the entry point of the app.
// runApp() starts the Flutter app and loads the widget tree — here, it loads our root widget MyApp.

void main() {
  runApp(const MyApp());
}

// MyApp is the root widget of the app.
// It extends StatelessWidget because it doesn’t need to store or change any internal state.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This function checks if the user has already signed up before.
  // SharedPreferences.getInstance() gives access to the local storage.
  // It looks for the key 'isSignedUp'.
  // If found → returns true.
  // If not found → returns false (using ?? false as a default value).
  // So this is how the app remembers whether the user has signed up or not —
  // even after closing and reopening the app.

  Future<bool> checkIfSignedUp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isSignedUp') ?? false;
  }

  // The build() method describes what the UI should look like.
  // MaterialApp sets up basic app configuration like title, theme, and the home screen.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // FutureBuilder is a special widget used when you need to wait
      // for an asynchronous task —
      // here, waiting for checkIfSignedUp() to finish.
      // The result of that future (true or false) decides which
      // screen to show.

      home: FutureBuilder<bool>(
        future: checkIfSignedUp(),
        builder: (context, snapshot) {

          // While waiting for the result, a loading spinner
          // (CircularProgressIndicator) is displayed.
          // This ensures the app doesn’t show a blank screen while checking sign-up status.

          if (!snapshot.hasData) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }

          // If the result is true, it means the user already signed up earlier.
          // So the app directly shows the DashboardScreen.

          if (snapshot.data == true) {
            return DashboardScreen();
          }
          return SignUpScreen();
        },
      ),
    );
  }
}
// In Simple Terms:
// When the app starts:
// It checks in SharedPreferences whether isSignedUp exists and is true.
// If yes → open DashboardScreen.
// If no → open SignUpScreen.
// While checking → show a loading spinner.