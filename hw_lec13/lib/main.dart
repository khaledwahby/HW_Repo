import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Hello(),
          QuickStart(),
          SizedBox(height: 30),
          Features(),
          SizedBox(height: 90),
          TwoButtons(),
        ],
      ),
    );
  }
}

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = 500;
    double buttonWidth = containerWidth - 40; // 350

    return Center(
      child: Container(
        width: containerWidth,
        height: 180, // increased height to fit button
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 129, 96, 185),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello! 👋',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "Try your best to build this UI",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 20), // pushes the button to the bottom
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 103, 59, 183),
                  elevation: 6, // shadow
                  minimumSize: Size(buttonWidth, 50), // width & height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // rounded corners
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuickStart extends StatelessWidget {
  const QuickStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Quick Start',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquareContainer(
              icon: Icon(
                Icons.group,
                size: 32,
                color: Color.fromARGB(255, 103, 60, 186),
              ),
              title: '1.234',
              subtitle: 'Users',
            ),
            SizedBox(width: 10),
            SquareContainer(
              icon: Icon(
                Icons.star,
                size: 32,
                color: Color.fromARGB(255, 254, 146, 1),
              ),
              title: '4.8',
              subtitle: 'Rating',
            ),
            SizedBox(width: 10),
            SquareContainer(
              icon: Icon(
                Icons.trending_up,
                size: 32,
                color: Color.fromARGB(255, 57, 148, 201),
              ),
              title: '98 %',
              subtitle: 'Success',
            ),
          ],
        ),
      ],
    );
  }
}

class SquareContainer extends StatelessWidget {
  final Icon icon; // Icon to display
  final String title; // First text
  final String subtitle; // Second text

  const SquareContainer({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120, // fixed width
      height: 120, // fixed height
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16), // rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 4), // shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 10,
              color: const Color.fromARGB(255, 120, 118, 118),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Features',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          FeatureItem(
            icon: Icons.speed,
            title: 'Fast Performance',
            subtitle: 'Lightning fast app performance',
            iconBgColor: Color.fromARGB(255, 239, 236, 247),
            iconColor: Colors.purple,
          ),
          FeatureItem(
            icon: Icons.security,
            title: 'Secure',
            subtitle: 'Your data is safe with us',
            iconBgColor: Color.fromARGB(255, 233, 244, 250),
            iconColor: Colors.blue,
          ),
          FeatureItem(
            icon: Icons.palette,
            title: 'Beautiful UI',
            subtitle: 'Modern and clean design',
            iconBgColor: Color.fromARGB(255, 254, 245, 225),
            iconColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color iconBgColor;
  final Color iconColor;

  const FeatureItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.iconBgColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        children: [
          // Icon box
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: iconBgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: iconColor),
          ),

          SizedBox(width: 16),

          // Texts
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
          ),

          // Arrow
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ],
      ),
    );
  }
}

class TwoButtons extends StatelessWidget {
  const TwoButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          // Settings Button
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 33, 150, 243),
                elevation: 5, // shadow
                padding: EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text('Settings', style: TextStyle(color: Colors.white)),
            ),
          ),

          SizedBox(width: 16), // space between buttons
          // Profile Button
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 151, 0),
                elevation: 5,
                padding: EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text('Profile', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
