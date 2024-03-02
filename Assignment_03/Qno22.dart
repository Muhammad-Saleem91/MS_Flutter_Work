import 'dart:io';

void main() {
  Map ShoppingCart = {
    "Apple": 10,
    "Pencils": 12,
    "Pens": 11,
    "Redmi 10C": 5,
    "Snacks": 6,
  };

  String SearchProduct = stdin.readLineSync()!;

  if (ShoppingCart.containsKey(SearchProduct)) {
    print("Product Found");
  } else {
    print("Product Not Found");
  }
}
