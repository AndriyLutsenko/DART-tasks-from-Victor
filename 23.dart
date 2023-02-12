import 'dart:io';

void main() {
  print("\nТабличка множення\n");
  var e = "Некоректне введення. Повторіть спробу";
  var a;
  while (a == null || a <= 0) {
    stdout.write("Введіть натуральне число:  ");
    a = int.tryParse(stdin.readLineSync()!);
    if (a == null || a <= 0) print(e);
  }
  for (int i = 1; i <= 10; i++) {
    print("$a * $i = ${a * i}");
  }
}
