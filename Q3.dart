import 'dart:io';

double desconto(double preco, [double percentual = 10]) {
  return preco - (preco * (percentual / 100));
}

void main() {
  stdout.write('Digite o preço: ');
  double preco = double.parse(stdin.readLineSync()!);
  stdout.write('Digite o percentual de desconto (ou deixe vazio): ');
  String? entrada = stdin.readLineSync();
  double resultado = entrada == null || entrada.isEmpty
      ? desconto(preco)
      : desconto(preco, double.parse(entrada));
  print('Preço com desconto: $resultado');
}
