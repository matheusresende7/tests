class Student {

  final String name;
  final int age;
  final double math;
  final double history;
  final double science;
  final double portuguese;
  final double geografy;

  Student({
    this.name,
    this.age,
    this.math,
    this.history,
    this.science,
    this.portuguese,
    this.geografy,
  });

  double get mediaGeral {
    var mediaGeral = (math + history + science + portuguese + geografy) / 5;
    return mediaGeral;
  }

  String get serie {
    switch (age) {
      case 6:
        return '1º Série';
      case 7:
        return '2º Série';
      case 8:
        return '3º Série';
      case 9:
        return '4º Série';
      case 10:
        return '5º Série';
      case 11:
        return '6º Série';
      case 12:
        return '7º Série';
      case 13:
        return '8º Série';
      case 14:
        return '9º Série';
      case 15:
        return '1º Ano';
      case 16:
        return '2º Ano';
      case 17:
        return '3º Ano';
    }
  }

}