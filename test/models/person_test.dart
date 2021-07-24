@Timeout(Duration(seconds: 40))
//@Skip('Falta terminar os casos de teste')
@Tags(['web'])

import 'package:flutter_test/flutter_test.dart';
import 'package:tests/models/person.dart';

void main () {



  final person = Person(
    name: 'Matheus',
    age: 25,
    height: 1.77,
    weight: 64.4,
  );



  setUp(() {
    print ('inicia o teste');
  });

  tearDown(() {
    print ('destroi o teste');
  });

  setUpAll(() {
    print ('iniciaaaaaaaaaaaaaaaaaaaaa o suit');
  });

  tearDownAll(() {
    print ('destroiiiiiiiiiiiiiiiiiiii o suit');
  });



  test('IMC deve vir 20.56:', () {
    expect(person.imc, 20.56);
    expect(person.imc, isA<double>());
  });

  test('Se a idade for maior ou igual à 18, então isOlder deve ser true', () {
    expect(person.isOlder, true);
    expect(person.isOlder, isA<bool>());
  });

  test('Nome deve ser igual a Matheus', () {
    expect(person.name, equals('Matheus'));
    expect(person.name, isA<String>());
    expect(person.name, isNotEmpty);
    expect(person.name, isNotNull);
    expect(person.name, contains('at'));
    //OU
    expect(person.name, allOf([
      equals('Matheus'),
      isA<String>(),
      isNotEmpty,
      isNotNull,
      contains('at'),
    ]));
  });

  group('isOlder variacoes', () {

    test('Se a idade for maior que 18, então isOlder deve ser true', () {
      expect(person.isOlder, true);
      expect(person.isOlder, isA<bool>());
    });

    test('Se a idade for igual à 18, então isOlder deve ser true', () {
      final person = Person(
        name: 'Matheus',
        age: 18,
        height: 1.77,
        weight: 64.4,
      );
      expect(person.isOlder, true);
      expect(person.isOlder, isA<bool>());
    });

  });

  test('Throw error', () {

    expect(() => int.parse('x'), throwsA(isA<Exception>()));
    expect(() => int.parse('abc'), throwsException);

    },
    timeout: Timeout(Duration(seconds: 40)),
    //skip: true,
    //skip: 'Falta terminar os casos de teste',
    tags: ['web'],
  );

}