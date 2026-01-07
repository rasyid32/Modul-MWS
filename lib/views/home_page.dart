import 'dart:developer';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: const SafeArea(child: Center(child: Text('Hello world'))),
      floatingActionButton: FloatingActionButton(
        onPressed: () => log('hello world'),
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
