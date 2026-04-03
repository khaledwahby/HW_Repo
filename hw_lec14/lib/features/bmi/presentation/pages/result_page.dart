import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmi;
  final String category;

  const ResultPage({super.key, required this.bmi, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("BMI Result"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              bmi.toStringAsFixed(1),
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              category,
              style: const TextStyle(fontSize: 30, color: Colors.white70),
            ),
            const SizedBox(height: 40),

            // زر Go Back
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context); // هذا يذهب للصفحة السابقة
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text("Go Back"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
