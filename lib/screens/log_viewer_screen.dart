// lib/screens/log_viewer_screen.dart
import 'package:flutter/material.dart';

class LogViewerScreen extends StatelessWidget {
  const LogViewerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final logs = [
      'Log_2025-05-01.bin',
      'Log_2025-05-02.bin',
      'Log_2025-05-03.bin',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Log Viewer')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: logs.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(logs[index]),
              trailing: const Icon(Icons.download),
              onTap: () {
                // Handle download
                print('Downloading ${logs[index]}');
              },
            ),
          );
        },
      ),
    );
  }
}