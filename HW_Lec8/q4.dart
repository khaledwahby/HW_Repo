void main() {
  /*
  Q4
Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
- In main(), demonstrate setting values and printing the original and discounted price.
 */

  Product product = Product();

  product.name = "Elentra-2026";
  product.price = 10500;

  print(
    "Product Name: ${product.name} - Original Price: ${product.price} Discounted Price: ${product.discountedPrice}",
  );
}

class Product {
  String? _name;
  double? _price;

  set name(String name) {
    if (name != "") {
      this._name = name;
    } else {
      print("Invalid name");
    }
  }

  set price(double price) {
    if (price >= 0) {
      this._price = price;
    } else {
      print("Invalid price");
    }
  }

  String get name => this._name!;
  double get price => this._price!;

  double get discountedPrice => this._price! * 0.9;
}
