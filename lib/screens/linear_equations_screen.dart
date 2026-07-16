import 'package:flutter/material.dart';
import 'linear_theory_screen.dart';
import 'linear_examples_screen.dart';
import 'linear_practice_screen.dart';
import 'linear_quiz_screen.dart';

class LinearEquationsScreen extends StatelessWidget {
  const LinearEquationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linear Equations"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: [
            _buildCard(
              context,
              "📖",
              "Theory",
              const LinearTheoryScreen(),
            ),

            _buildCard(
              context,
              "✍️",
              "Examples",
              const LinearExamplesScreen(),
            ),

            _buildCard(
              context,
              "📝",
              "Practice",
              const LinearPracticeScreen(),
            ),

            _buildCard(
              context,
              "❓",
              "Quiz",
              const LinearQuizScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(
    BuildContext context,
    String emoji,
    String title,
    Widget screen,
  ) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => screen),
        );
      },
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              emoji,
              style: const TextStyle(fontSize: 45),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}