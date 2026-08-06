import 'dart:io';

void main() {
  print('Digite um número para ver a sua tabuada:');
  
  String? entrada = stdin.readLineSync();
  int? numero = int.tryParse(entrada ?? '');

  if (numero == null) {
    print('Erro: Por favor, digite um número inteiro válido.');
    return;
  }

  print('\n--- Tabuada do $numero ---');
  
  for (int i = 1; i <= 10; i++) {
    int resultado = numero * i;
    print('$numero x $i = $resultado');
  }
}
