class Client {

  final String name;
  final int age;
  final int cpf;
  final int cartaoCredito;

  Client({
    this.name,
    this.age,
    this.cpf,
    this.cartaoCredito,
  });

  bool get cpfValido {
    return cpf.toString().length == 11;
  }

  bool cartaoValido () {
    return cartaoCredito.toString().length == 16;
  }

}