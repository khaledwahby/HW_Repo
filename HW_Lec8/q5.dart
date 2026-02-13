void main() {
  /*
  Q5
Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages £ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time.
 */

  Book cleancode = Book();

  cleancode.title = "Clean Code";
  cleancode.pages = 150;

  print(
    "Book Title: ${cleancode.title} Reading Time: ${cleancode.readingTime} m",
  );
}

class Book {
  String? _title;
  int? _pages;

  set title(String title) {
    if (title != "") {
      this._title = title;
    } else {
      print("Invalid title");
    }
  }

  set pages(int pages) {
    if (pages > 0) {
      this._pages = pages;
    } else {
      print("Invalid number of pages");
    }
  }

  String get title => this._title!;
  int get readingTime => this._pages! * 2;
}
