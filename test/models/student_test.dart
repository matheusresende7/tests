import 'package:flutter_test/flutter_test.dart';
import 'package:tests/models/student.dart';

void main () {

  final student = Student(
    name: 'Matheus',
    age: 7,
    math: 10.0,
    history: 7.6,
    science: 9.2,
    portuguese: 6.5,
    geografy: 8.4,
  );

  test('Média geral deve ser 8.34', () {
    expect(student.mediaGeral, allOf([
      equals(8.34),
      isA<double>(),
      isNotNull,
    ]));
  });

  test('A série deve ser 2º Série', () {
    expect(student.serie, equals('2º Série'));
  });

}