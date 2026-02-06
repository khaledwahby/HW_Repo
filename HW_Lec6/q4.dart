void main() {
  /*
    Q4. Class with Default Attribute Value 
    - Create a class Product with attributes name and price. 
    - Give price a default value of 0. 
    - Create two objects: one with a custom price and one with the default price. Print their details.
  */

  Product prodcut1 = Product("Washing Machines");
  Product prodcut2 = Product("Frigidaire", 6000);
  print(" Product1 details: name: ${prodcut1.name}  Price:  ${prodcut1.price}");
  print(" Product1 details: name: ${prodcut2.name}  Price:  ${prodcut2.price}");
}

class Product {
  String? name;
  num? price;
  Product(this.name, [this.price = 0]) {}
}
