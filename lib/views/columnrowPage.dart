import 'package:flutter/material.dart';

class ColumnRowPage extends StatefulWidget {
  const ColumnRowPage({super.key});

  @override
  State<ColumnRowPage> createState() => _ColumnRowPageState();
}

class _ColumnRowPageState extends State<ColumnRowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Column & Row',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.indigo,
                    child: const Center(
                      child: Text(
                        "Kotak 1",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        "Kotak 2",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "Kotak 3",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    "Kotak 4",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
