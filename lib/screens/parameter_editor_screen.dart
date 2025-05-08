



// lib/screens/parameter_editor_screen.dart
import 'package:flutter/material.dart';

class ParameterEditorScreen extends StatefulWidget {
  const ParameterEditorScreen({super.key});

  @override
  State<ParameterEditorScreen> createState() => _ParameterEditorScreenState();
}

class _ParameterEditorScreenState extends State<ParameterEditorScreen> {
  final TextEditingController _param1Controller = TextEditingController();
  final TextEditingController _param2Controller = TextEditingController();

  @override
  void dispose() {
    _param1Controller.dispose();
    _param2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Parameter Editor')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _param1Controller,
              decoration: const InputDecoration(
                labelText: 'Parameter 1',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _param2Controller,
              decoration: const InputDecoration(
                labelText: 'Parameter 2',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save parameters
                print('Saving: ${_param1Controller.text}, ${_param2Controller.text}');
              },
              child: const Text('Save'),
            )
          ],
        ),
      ),
    );
  }
}