import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Forms Example",
      home: const FormExample(),
    );
  }
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final _formKey = GlobalKey<FormState>();

  // Form values
  String name = "";
  String email = "";
  String password = "";
  String gender = "Male"; // default radio value
  String country = "Pakistan"; // default dropdown value
  bool notifications = false;
  bool acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Form Widgets"),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                onChanged: (value) => setState(() => name = value),
                validator: (value) =>
                    value!.isEmpty ? "Please enter your name" : null,
              ),
              const SizedBox(height: 20),

              // Email Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                onChanged: (value) => setState(() => email = value),
                validator: (value) =>
                    value!.isEmpty ? "Please enter your email" : null,
              ),
              const SizedBox(height: 20),

              // Password Field
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                onChanged: (value) => setState(() => password = value),
                validator: (value) =>
                    value!.length < 6 ? "Password must be 6+ chars" : null,
              ),
              const SizedBox(height: 20),

              // Radio Buttons (Gender)
              const Text("Gender", style: TextStyle(fontSize: 16)),
              Row(
                children: [
                  Radio<String>(
                    value: "Male",
                    groupValue: gender,
                    onChanged: (value) =>
                        setState(() => gender = value ?? "Male"),
                  ),
                  const Text("Male"),
                  Radio<String>(
                    value: "Female",
                    groupValue: gender,
                    onChanged: (value) =>
                        setState(() => gender = value ?? "Female"),
                  ),
                  const Text("Female"),
                ],
              ),
              const SizedBox(height: 20),

              // Dropdown (Country)
              DropdownButtonFormField<String>(
                value: country,
                items: ["Pakistan", "India", "USA", "UK"]
                    .map((c) => DropdownMenuItem(
                          value: c,
                          child: Text(c),
                        ))
                    .toList(),
                onChanged: (value) => setState(() => country = value!),
                decoration: const InputDecoration(
                  labelText: "Country",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              // Switch (Notifications)
              SwitchListTile(
                title: const Text("Receive Notifications"),
                value: notifications,
                onChanged: (value) => setState(() => notifications = value),
              ),
              const SizedBox(height: 10),

              // Checkbox (Terms & Conditions)
              CheckboxListTile(
                title: const Text("I accept the terms & conditions"),
                value: acceptTerms,
                onChanged: (value) => setState(() => acceptTerms = value!),
              ),
              const SizedBox(height: 20),

              // Submit Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate() && acceptTerms) {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: const Text("Form Submitted"),
                        content: Text(
                          "Name: $name\nEmail: $email\nGender: $gender\nCountry: $country\nNotifications: $notifications",
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("OK"),
                          )
                        ],
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Please complete the form")),
                    );
                  }
                },
                child: const Text("Submit", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
