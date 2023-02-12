import 'dart:io';

void main() {
  print("\n Програма \"Сума непарних цифр числа\" \n");
  var e = "Некоректне введення. Повторіть спробу";
  var x;
  while (x == null || x <= 0) {
    stdout.write("Введіть натуральне число:  ");
    x = int.tryParse(stdin.readLineSync());
    if ( x== null || x <= 0 ) print(e);
  }
  int sum = 0;
    while (x>0) {
    if ((x%10)%2!=0) {sum = sum+x%10;}
    x=x~/10;
  }
 print("\n Сума непарних цифр дорівнює: $sum");
  }
