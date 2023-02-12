import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Введіть, будь ласка, додатнє число: ");
  var value = num.tryParse(stdin.readLineSync()!);
  if (value != null && value >= 0) {
    var q = value * value;
    var k = sqrt(value);
    int kInt = k.toInt();
    print("Квадрат числа $value = $q");
    if (k != k.toInt()) {
      print("Корінь квадратний з числа $value = $k");
    } else
      print("Корінь квадратний з числа $value = $kInt)");
  } else {
    print("Некоректне введення");
  }
}
