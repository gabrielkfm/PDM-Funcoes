import 'dart:io';

int multiplicar(int a, int b) {
  return a * b;
}

void main() {
  stdout.write('Digite o primeiro número: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('Digite o segundo número: ');
  int b = int.parse(stdin.readLineSync()!);
  var operacao = multiplicar;
  print('Resultado: ${operacao(a, b)}');
}
