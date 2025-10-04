import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NetworkCheckScreen(),
  ));
}

class NetworkCheckScreen extends StatefulWidget {
  const NetworkCheckScreen({super.key});

  @override
  State<NetworkCheckScreen> createState() => NetworkCheckScreenState();
}

class NetworkCheckScreenState extends State<NetworkCheckScreen> {
  final Connectivity connectivity = Connectivity();
  late Stream<List<ConnectivityResult>> connectivityStream;

  @override
  void initState() {
    super.initState();
    connectivityStream = connectivity.onConnectivityChanged;
    connectivityStream.listen((List<ConnectivityResult> results) {
      // results is a list, so we check the first one (if available)
      final result = results.isNotEmpty ? results.first : ConnectivityResult.none;

      if (result == ConnectivityResult.none) {
        Fluttertoast.showToast(
          msg: "No Internet Connection",
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      } else {
        Fluttertoast.showToast(
          msg: "Internet Connected",
          backgroundColor: Colors.green,
          textColor: Colors.white,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Internet Connectivity Check"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          "Toggle Internet to see status",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
