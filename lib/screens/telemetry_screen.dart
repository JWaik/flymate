// lib/screens/telemetry_screen.dart
import 'package:flutter/material.dart';

class TelemetryScreen extends StatelessWidget {
  const TelemetryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Telemetry')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text('Altitude: -- m', style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          Text('Speed: -- m/s', style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          Text('Battery: -- %', style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          Text('GPS: --', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}