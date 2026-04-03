import 'package:flutter/material.dart';
import '../../domain/bmi_calculator.dart';
import '../widgets/gender_card.dart';
import '../widgets/counter_widget.dart';
import 'result_page.dart';

enum Gender { male, female }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender? gender;
  double height = 170;
  int weight = 60;
  int age = 25;

  void calculateBMIAndNavigate() {
    double bmi = BMICalculator.calculate(weight: weight, height: height);
    String category = BMICalculator.getCategory(bmi);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ResultPage(bmi: bmi, category: category),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          /// Gender Selection
          Row(
            children: [
              GenderCard(
                title: "MALE",
                icon: Icons.male,
                isSelected: gender == Gender.male,
                onTap: () => setState(() => gender = Gender.male),
              ),
              GenderCard(
                title: "FEMALE",
                icon: Icons.female,
                isSelected: gender == Gender.female,
                onTap: () => setState(() => gender = Gender.female),
              ),
            ],
          ),

          /// Height Slider
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                const Text("HEIGHT", style: TextStyle(color: Colors.white70)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      height.toInt().toString(),
                      style: const TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(" cm", style: TextStyle(color: Colors.white70)),
                  ],
                ),
                Slider(
                  value: height,
                  min: 100,
                  max: 220,
                  activeColor: Colors.pink,
                  onChanged: (val) => setState(() => height = val),
                ),
              ],
            ),
          ),

          /// Weight & Age
          Row(
            children: [
              CounterWidget(
                title: "WEIGHT",
                value: weight,
                onPlus: () => setState(() => weight++),
                onMinus: () => setState(() => weight--),
              ),
              CounterWidget(
                title: "AGE",
                value: age,
                onPlus: () => setState(() => age++),
                onMinus: () => setState(() => age--),
              ),
            ],
          ),

          /// Calculate Button
          Container(
            width: double.infinity,
            height: 60,
            margin: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              onPressed: calculateBMIAndNavigate,
              child: const Text(
                "CALCULATE",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
