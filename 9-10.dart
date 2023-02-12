import 'dart:io';

void main() {
  print("\n     Програма \"Гасло\" \n");
  while (true) {
    stdout.write("Користувач:   ");
    var gaslo = stdin
        .readLineSync()
        ?.toUpperCase()
        .replaceAll(' ', '')
        .replaceAll('!', '');
//.replaceAll(RegExp('  +'), ' '); //заміняє великі пробіли одним
    switch (gaslo) {
      case "СЛАВАУКРАЇНІ":
        print("Програма:     Героям Слава!");
        break;
      case "СЛАВАНАЦІЇ":
        print("Програма:     Смерть ворогам!");
        break;
      case "УКРАЇНА":
        print("Програма:     Понад усе!");
        break;
      default:
        print("Некоректне введення. Повторіть спробу");
    }
    print("");
  }
}
