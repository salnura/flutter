import 'package:flutter/material.dart';

class HelloWolrd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Flutter"),
      ),
      body: const Center(
        child: Text("Hello Wolrd"),
      ),
    );
  }
}