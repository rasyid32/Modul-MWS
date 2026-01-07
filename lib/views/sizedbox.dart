import 'package:flutter/material.dart';

class SizedBoxPage extends StatefulWidget {
  const SizedBoxPage({super.key});

  @override
  State<SizedBoxPage> createState() => _SizedBoxPageState();
}

class _SizedBoxPageState extends State<SizedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SizedBox',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('This text and'),
                  Text('the next text have no distance'),
                ],
              ),
              const SizedBox(height: 16.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('This text and'),
                  SizedBox(width: 24.0),
                  Text('the next text have distance'),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 50.0, height: 50.0, color: Colors.indigo),
                  Container(width: 50.0, height: 50.0, color: Colors.pink),
                  Container(width: 50.0, height: 50.0, color: Colors.yellow),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 50.0, height: 50.0, color: Colors.indigo),
                  const SizedBox(width: 24.0),
                  Container(width: 50.0, height: 50.0, color: Colors.pink),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
