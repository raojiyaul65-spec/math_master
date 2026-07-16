import 'package:flutter/material.dart';

class LinearTheoryScreen extends StatelessWidget {
  const LinearTheoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linear Equations Theory"),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Linear Equations",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            Text(
              "Definition",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            Text(
              "A linear equation is an equation of degree 1. "
              "It can be written in the form ax + b = 0, where a ≠ 0.",
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 20),

            Text(
              "Examples",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            Text(
              "1) x + 5 = 10\n"
              "2) 2x - 4 = 8\n"
              "3) 5x + 2 = 17",
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 20),

            Text(
              "Steps to Solve",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            Text(
              "1. Move constants to one side.\n"
              "2. Simplify both sides.\n"
              "3. Divide by the coefficient of x.\n"
              "4. Verify the answer.",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}