// function jo ek number ka table print kare
void printTable(int number) {
  for (int i = 1; i <= 10; i++) {
    print("$number x $i = ${number * i}");
  }
}

void main() {
  printTable(5); 
}
