import 'dart:io';

void main() {
  print("\n Програма \"Кількість і сума цифр числа\" \n");
  var e = "Некоректне введення. Повторіть спробу";
  var x;
  while (x == null || x <= 0) {
    stdout.write("Введіть натуральне число:  ");
    x = int.tryParse(stdin.readLineSync()!);
    if (x == null || x <= 0) print(e);
  }
  int sum = 0;
  int size = 0;
  while (x > 0) {
    sum = sum + x % 10 as int;
    size++;
    x = x ~/ 10;
  }
  print("\n Кількість цифр: $size \n Їх сума дорівнює: $sum");
}
