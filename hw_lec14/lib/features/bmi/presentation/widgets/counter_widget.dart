import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback onPlus;
  final VoidCallback onMinus;

  const CounterWidget({
    super.key,
    required this.title,
    required this.value,
    required this.onPlus,
    required this.onMinus,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(title, style: const TextStyle(color: Colors.white70)),
            Text(
              "$value",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: onMinus,
                  icon: const Icon(Icons.remove, color: Colors.white),
                ),
                IconButton(
                  onPressed: onPlus,
                  icon: const Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
