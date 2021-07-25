import 'package:flutter_test/flutter_test.dart';
import 'package:tests/models/client.dart';

void main () {

  final client = Client(
    name: 'Matheus',
    age: 25,
    cpf: 12345678912,
    cartaoCredito: 123412341234123412,
  );

  test('CPF deve ser valido', () {
    expect(client.cpf, allOf([
      equals(12345678912),
      isA<int>(),
      isNotNull,
    ]));
    expect(client.cpfValido, allOf([
      equals(true),
      isA<bool>(),
      isNotNull,
    ]));
  });

  test('Cartão de credito deve ser valido', () {
    expect(client.cartaoCredito, allOf([
      equals(123412341234123412),
      isA<int>(),
      isNotNull,
    ]));
    expect(client.cartaoValido(), allOf([
      equals(false),
      isA<bool>(),
      isNotNull,
    ]));
  });

}