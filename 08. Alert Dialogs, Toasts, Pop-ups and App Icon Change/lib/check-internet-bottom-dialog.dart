import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

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
      final result = results.isNotEmpty ? results.first : ConnectivityResult.none;

      if (result == ConnectivityResult.none) {
        showBottomAlert("No Internet Connection", Colors.red, Icons.wifi_off);
      } else {
        showBottomAlert("Internet Connected", Colors.green, Icons.wifi);
      }
    });
  }

  void showBottomAlert(String message, Color color, IconData icon) {
    if (!mounted) return;
    showModalBottomSheet(
      context: context,
      backgroundColor: color,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 28),
              const SizedBox(width: 12),
              Text(
                message,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
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
          "Toggle Internet to see bottom alert",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
