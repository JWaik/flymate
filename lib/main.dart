// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/telemetry_screen.dart';
import 'screens/parameter_editor_screen.dart';
import 'screens/log_viewer_screen.dart';

void main() {
  runApp(const FlyMateApp());
}

class FlyMateApp extends StatelessWidget {
  const FlyMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlyMate',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/telemetry': (context) => const TelemetryScreen(),
        '/parameters': (context) => const ParameterEditorScreen(),
        '/logs': (context) => const LogViewerScreen(),
      },
    );
  }
}

