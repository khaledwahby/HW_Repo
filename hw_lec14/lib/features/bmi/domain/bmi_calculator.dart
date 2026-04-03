class BMICalculator {
  static double calculate({required int weight, required double height}) {
    return weight / ((height / 100) * (height / 100));
  }

  static String getCategory(double bmi) {
    if (bmi < 18.5) return "Underweight";
    if (bmi < 25) return "Normal";
    return "Overweight";
  }
}
