void greet(String name, {String country = "Pakistan"}) {
  print("Hello $name from $country ");
}

void main() {
  greet("Hamza");                // default country use hogi
  greet("Ali", country: "UAE");  // custom country pass ki
}
