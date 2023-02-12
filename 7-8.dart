import 'dart:io';

void main() {
  print("Програма для обчислення площі трапеції \n");
  stdout.write("Введіть одиниці вимірювання (мм, см, дм тощо)): ");
  var od = stdin.readLineSync();
  var e = "Некоректне введення. Повторіть спробу";
  var mOsnova;
  var bOsnova;
  var height;

  while (mOsnova == null || mOsnova < 0) {
    stdout.write(
        "Введіть довжину меншої основи трапеції (число без одиниць вимірювання): ");
    mOsnova = num.tryParse(stdin.readLineSync()!);
    if (mOsnova == null || mOsnova < 0) print(e);
  }
  while (bOsnova == null || bOsnova < 0) {
    stdout.write(
        "Введіть довжину більшої основи трапеції (число без одиниць вимірювання): ");
    bOsnova = num.tryParse(stdin.readLineSync()!);
    if (bOsnova == null || bOsnova < 0) print(e);
  }
  while (true) {
    stdout.write("Введіть висоту  трапеції (число без одиниць вимірювання): ");
    height = num.tryParse(stdin.readLineSync()!);
    if (height == null || height < 0) {
      print(e);
      continue;
    }
    break;
  }
  print('');
  var s = (mOsnova + bOsnova) / 2 * height;
  print("Площа трапеції: $s кв.$od");
}
