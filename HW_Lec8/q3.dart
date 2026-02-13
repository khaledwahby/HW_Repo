void main() {
  /*
  Q3
Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ³ 50.
- In main(), demonstrate updating the score multiple times and printing results.
 */

  Grade student1 = Grade();

  student1.score = 95;
  print("Score: ${student1.score}, Pass: ${student1.isPass}");

  student1.score = 32;
  print("Score: ${student1.score}, Pass: ${student1.isPass}");

  student1.score = 110; // invalid
  print("Score: ${student1.score}, Pass: ${student1.isPass}");
}

class Grade {
  int _score = 0;

  set score(int score) {
    if (score >= 0 && score <= 100) {
      this._score = score;
    } else {
      print("Invalid score");
    }
  }

  int get score => _score;
  bool get isPass => _score >= 50;
}
