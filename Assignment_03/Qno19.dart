void main() {
  Map Product = {
    "name": "Redmi Note 13",
    "price": 70000,
    "quantity": 3,
  };

  if (Product["quantity"] > 0) {
    print("In Stock");
  } else {
    print("Out of Stock");
  }
}
