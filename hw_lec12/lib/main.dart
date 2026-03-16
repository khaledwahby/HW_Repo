import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row1(),
            SizedBox(height: 20),
            Row2(),
            SizedBox(height: 20),
            Row3(),
            SizedBox(height: 20),
            Row4(),
            SizedBox(height: 20),
            Row5(),
            SizedBox(height: 20),
            Row6(),
            SizedBox(height: 20),
            Row7(),
          ],
        ),
      ),
    );
  }
}

// ============== R O W 1 ============================
class Row1 extends StatelessWidget {
  const Row1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // full width of Column
      height: 160,
      color: const Color.fromARGB(255, 228, 242, 253),
    );
  }
}

// ============== R O W 2 ============================
class Row2 extends StatelessWidget {
  const Row2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 30,
          height: 20,
          color: Color.fromARGB(255, 224, 224, 224),
        ),
        SizedBox(width: 10),
        Container(
          width: 350,
          height: 20,
          color: Color.fromARGB(255, 224, 224, 224),
          alignment: Alignment.centerLeft,
        ),
      ],
    );
  }
}

// ============== R O W 3 ============================
class Row3 extends StatelessWidget {
  const Row3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 3,
      color: Color.fromARGB(255, 224, 224, 224),
    );
  }
}

// ============== R O W 4 ============================

class Row4 extends StatelessWidget {
  const Row4({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 180,
          height: 100,
          color: const Color.fromARGB(255, 230, 247, 231),
          child: Column(
            children: [
              Container(
                width: 190,
                height: 45,
                color: const Color.fromARGB(255, 165, 214, 167),
              ),
              SizedBox(height: 10),
              Container(
                width: 190,
                height: 45,
                color: const Color.fromARGB(255, 165, 214, 167),
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        Container(
          width: 190,
          height: 100,
          color: const Color.fromARGB(255, 255, 242, 224),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Container(
                width: 90,
                height: 100,
                color: const Color.fromARGB(255, 255, 204, 128),
              ),
              SizedBox(width: 10),
              Container(
                width: 90,
                height: 100,
                color: const Color.fromARGB(255, 255, 204, 128),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ============== R O W 5 ============================
class Row5 extends StatelessWidget {
  const Row5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 390,
      color: const Color.fromARGB(255, 243, 229, 243),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 92.5,
            color: const Color.fromARGB(255, 225, 190, 232),
          ),
          SizedBox(width: 10, height: 100),
          Column(
            children: [
              Container(
                height: 45,
                width: 92.5,
                color: const Color.fromARGB(255, 207, 147, 217),
              ),
              SizedBox(height: 10),
              Container(
                height: 45,
                width: 92.5,
                color: const Color.fromARGB(255, 207, 147, 217),
              ),
            ],
          ),
          SizedBox(width: 10, height: 100),
          Container(
            height: 100,
            width: 92.5,
            color: const Color.fromARGB(255, 225, 190, 232),
          ),
        ],
      ),
    );
  }
}

// ============== R O W 6 ============================

class Row6 extends StatelessWidget {
  const Row6({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 185,
          height: 60,
          color: const Color.fromARGB(255, 178, 223, 220),
        ),
        SizedBox(width: 20),
        Container(
          width: 185,
          height: 60,
          color: const Color.fromARGB(255, 128, 203, 196),
        ),
      ],
    );
  }
}

// ============== R O W 7 ============================

class Row7 extends StatelessWidget {
  const Row7({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // full width of Column
      height: 40,
      color: const Color.fromARGB(255, 224, 224, 224),
    );
  }
}
