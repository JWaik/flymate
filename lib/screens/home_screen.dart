// lib/screens/home_screen.dart
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlyMate'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Welcome to FlyMate',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildNavButton(context, 'Telemetry', '/telemetry'),
            _buildNavButton(context, 'Parameter Editor', '/parameters'),
            _buildNavButton(context, 'Log Viewer', '/logs'),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String label, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
        ),
        child: Text(label),
      ),
    );
  }
}