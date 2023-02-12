import 'dart:io';

void main() {
  print("\n Програма \"Парні числа\" \n");
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) stdout.write("${i}, ");
  }
  print("");
  for (int i = 20; i > 1; i = i - 2) {
    stdout.write("${i}, ");
  }
}
