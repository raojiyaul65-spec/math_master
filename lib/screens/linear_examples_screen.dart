import 'package:flutter/material.dart';

class LinearExamplesScreen extends StatelessWidget {
  const LinearExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linear Equations Examples"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Text(
            "Example 1",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),

          Text(
            "Solve: x + 5 = 12\n\n"
            "Step 1: Subtract 5 from both sides.\n"
            "x = 12 - 5\n"
            "x = 7",
            style: TextStyle(fontSize: 18),
          ),

          SizedBox(height: 30),

          Text(
            "Example 2",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),

          Text(
            "Solve: 3x = 21\n\n"
            "Step 1: Divide both sides by 3.\n"
            "x = 21 ÷ 3\n"
            "x = 7",
            style: TextStyle(fontSize: 18),
          ),

          SizedBox(height: 30),

          Text(
            "Example 3",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),

          Text(
            "Solve: 2x + 4 = 10\n\n"
            "Step 1: Subtract 4.\n"
            "2x = 6\n\n"
            "Step 2: Divide by 2.\n"
            "x = 3",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}