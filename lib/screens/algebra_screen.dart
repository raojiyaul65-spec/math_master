import 'package:flutter/material.dart';
import 'linear_equations_screen.dart';

class AlgebraScreen extends StatelessWidget {
  const AlgebraScreen({super.key});

  final List<Map<String, dynamic>> topics = const [
    {"title": "Linear Equations", "icon": Icons.functions},
    {"title": "Quadratic Equations", "icon": Icons.show_chart},
    {"title": "Polynomials", "icon": Icons.calculate},
    {"title": "Factorization", "icon": Icons.extension},
    {"title": "Exponents", "icon": Icons.exposure_plus_1},
    {"title": "Practice Questions", "icon": Icons.quiz},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Algebra"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: topics.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const LinearEquationsScreen(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text("${topics[index]["title"]} Coming Soon"),
                      ),
                    );
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      topics[index]["icon"],
                      size: 55,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      topics[index]["title"],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}