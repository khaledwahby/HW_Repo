void main() {
  /*
  Q9
  Create a program with a page path stored in a variable. If the path is '/', print Home. For any other value, print 404.
  */

  String pagePath = "/page5";
  bool isHomePage = pagePath == "/";

  if (isHomePage) {
    print("home");
  } else {
    print("404");
  }
}
