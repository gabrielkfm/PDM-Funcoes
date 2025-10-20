import 'dart:io';

String raindrops(int numero) {
  String resultado = '';
  if (numero % 3 == 0) resultado += 'Pling';
  if (numero % 5 == 0) resultado += 'Plang';
  if (numero % 7 == 0) resultado += 'Plong';
  return resultado.isEmpty ? '$numero' : resultado;
}

void main() {
  stdout.write('Digite um número: ');
  int numero = int.parse(stdin.readLineSync()!);
  print(raindrops(numero));
}
