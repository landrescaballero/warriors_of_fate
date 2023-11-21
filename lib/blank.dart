import 'package:flutter/material.dart';

class Apage extends StatefulWidget {
  const Apage({super.key});

  @override
  State<Apage> createState() => _State();
}

class _State extends State<Apage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome"), actions: const [
        IconButton(icon: Icon(Icons.exit_to_app), onPressed: null),
      ]),
      body: const Center(child: Text("")),
      floatingActionButton: const FloatingActionButton(
        onPressed: (null),
        child: Text("."),
      ),
    );
  }
}
