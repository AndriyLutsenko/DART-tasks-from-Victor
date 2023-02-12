import 'dart:io';
import 'dart:math';

void main() {
  print("\n Програма для розв'язування квадратних рівнянь");
  print("Рівняння типу:  ax^2 + bx + c = 0");
  var e = "Некоректне введення. Повторіть спробу";
  var a;
  var b;
  var c;
  while (a == null) {
  stdout.write("Введіть а:  ");
  a = num.tryParse(stdin.readLineSync()!.replaceAll(' ', '').replaceAll(',', '.'));
  if (a == null) print(e);}
  while (b == null) {
  stdout.write("Введіть b:  ");
  b = num.tryParse(stdin.readLineSync()!.replaceAll(' ', '').replaceAll(',', '.'));
  if (b == null) print(e);}
  while (c == null) {
  stdout.write("Введіть c:  ");
  c = num.tryParse(stdin.readLineSync()!.replaceAll(' ', '').replaceAll(',', '.'));
  if (c == null) print(e);}
    print("");
  print("Рівняння  ${a}x^2 + ${b}x + $c = 0");
  num d = b*b-4*a*c;
  num x1 = (-b + sqrt(d) ) / (2 * a);
  num x2 = (-b - sqrt(d) ) / (2 * a);
  if(d < 0) print ("не має дійсних розв'язків, D < 0");
  if(d == 0) print ("має один розв'язок: x=$x1");
  if(d > 0) print ("має два розв'язки: x=$x1 та x=$x2}");
  }

