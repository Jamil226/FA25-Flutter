void main() {
  var fruits = ["Apple", "Banana"];  // list banai

  fruits.add("Mango");   // ek item add
  fruits.add("Orange");  // aur ek add

  print(fruits); // Output: [Apple, Banana, Mango, Orange]

  fruits.remove("Banana");  // ek item remove
  print(fruits); // Output: [Apple, Mango, Orange]
}
