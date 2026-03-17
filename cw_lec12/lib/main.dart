import 'dart:ui';

import 'package:flutter/cupertino.dart';
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
      body: Center(
        child: Container(
          height: 520,
          width: 390,
          color: Color.fromARGB(255, 195, 231, 255),
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row1(),
              SizedBox(height: 20),
              Container(
                height: 230,
                width: 370,
                color: Color.fromARGB(255, 204, 206, 239),
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text1(),
                    SizedBox(height: 20),
                    Row3(),
                    SizedBox(height: 20),
                    Row4(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text2(),
              SizedBox(height: 20),
              Row5(),
            ],
          ),
        ),
      ),
    );
  }
}

// ================== R O W 1 ====================
class Row1 extends StatelessWidget {
  const Row1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 242, 85, 82),
            foregroundColor: Colors.white,
            fixedSize: Size(100, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child: Text("A", style: TextStyle(fontSize: 30)),
        ),

        SizedBox(width: 20),

        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 255, 173, 41),
            foregroundColor: Colors.white,
            fixedSize: Size(100, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child: Text("B", style: TextStyle(fontSize: 30)),
        ),

        SizedBox(width: 20),

        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 255, 217, 52),
            foregroundColor: Colors.white,
            fixedSize: Size(100, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child: Text("C", style: TextStyle(fontSize: 30)),
        ),
      ],
    );
  }
}

// ================== T E X T 1 ====================

class Text1 extends StatelessWidget {
  const Text1({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Fancy Section",
      style: TextStyle(
        fontSize: 25,
        color: Color.fromARGB(255, 64, 82, 171),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

// ================== R O W 3 ====================

class Row3 extends StatelessWidget {
  const Row3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 132, 89, 205),
            foregroundColor: Colors.white,
            fixedSize: Size(50, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child: Text("1", style: TextStyle(fontSize: 30)),
        ),

        SizedBox(width: 20),

        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 172, 74, 187),
            foregroundColor: Colors.white,
            fixedSize: Size(50, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child: Text("2", style: TextStyle(fontSize: 30)),
        ),

        SizedBox(width: 20),

        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 150, 117, 208),
            foregroundColor: Colors.white,
            fixedSize: Size(50, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child: Text("3", style: TextStyle(fontSize: 30)),
        ),
      ],
    );
  }
}

// ================== R O W 4 ====================

class Row4 extends StatelessWidget {
  const Row4({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 198, 106, 205),
            foregroundColor: Colors.white,
            fixedSize: Size(50, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child: Text("4", style: TextStyle(fontSize: 30)),
        ),

        SizedBox(width: 20),

        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 187, 161, 228),
            foregroundColor: Colors.white,
            fixedSize: Size(50, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child: Text("5", style: TextStyle(fontSize: 30)),
        ),

        SizedBox(width: 20),

        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 207, 150, 221),
            foregroundColor: Colors.white,
            fixedSize: Size(50, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child: Text("6", style: TextStyle(fontSize: 30)),
        ),
      ],
    );
  }
}

// ================== T E X T 2 ====================

class Text2 extends StatelessWidget {
  const Text2({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Info Card",
      style: TextStyle(
        fontSize: 25,
        color: Color.fromARGB(255, 64, 82, 171),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

// ================== R O W 5 ====================

class Row5 extends StatelessWidget {
  const Row5({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.white,
          height: 100,
          width: 100,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "23",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 59, 157, 156),
                  ),
                ),
                Text(
                  "Active",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 59, 157, 156),
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(width: 20),

        Container(
          color: Colors.white,
          height: 100,
          width: 100,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "15",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 249, 180, 21),
                  ),
                ),
                Text(
                  "Pending",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 249, 180, 21),
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(width: 20),

        Container(
          color: Colors.white,
          height: 100,
          width: 100,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "7",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 72, 161, 77),
                  ),
                ),
                Text(
                  "Completed",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 72, 161, 77),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
