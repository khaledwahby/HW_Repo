import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Flutter layout demo'), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/lake.jpg',
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),

          // Title Section
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Oeschinen Lake Campground',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Kandersteg, Switzerland',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.star, color: Colors.red),
                const SizedBox(width: 4),
                const Text('41'),
              ],
            ),
          ),

          // Buttons Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ActionButton(icon: Icons.call, label: 'CALL'),
                ActionButton(icon: Icons.navigation, label: 'ROUTE'),
                ActionButton(icon: Icons.share, label: 'SHARE'),
              ],
            ),
          ),

          // Description
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. '
              'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
              'A gondola ride from Kandersteg, followed by a half-hour walk through pastures '
              'and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. '
              'Activities enjoyed here include rowing, and riding the summer toboggan run.',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const ActionButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0, //
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [Icon(icon), SizedBox(height: 6), Text(label)],
      ),
    );
  }
}
