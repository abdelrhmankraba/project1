import 'package:flutter/material.dart';
import 'package:project1/core/func/filePicker.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: const Text("Pick Files"),
          onTap: () {
            Fun().pickMultipleFiles();
          },
        ),
      ),
    );
  }
}
