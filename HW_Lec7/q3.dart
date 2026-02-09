void main() {
  /*
Q3 Create a class Movie with attributes title and rating. 
In main(), create a list of 4 movies. Print only the movies with a rating above 7.
 */

  Movie movieA = Movie();
  movieA.title = "Al-Ward El-Abyad";
  movieA.rating = 8.1;
  Movie movieB = Movie();
  movieB.title = "Bab El-Hadid";
  movieB.rating = 1.8;
  Movie movieC = Movie();
  movieC.title = "Bayn El-Atlal";
  movieC.rating = 7.9;
  Movie movieD = Movie();
  movieD.title = "Al-Karnak";
  movieD.rating = 5.0;

  List<Movie> movies = [movieA, movieB, movieC, movieD];

  for (var e in movies) {
    if (e.rating! > 7) {
      print(" Movie name : ${e.title} with rating of :  ${e.rating}");
    }
  }
}

class Movie {
  String? title;
  num? rating;
}
