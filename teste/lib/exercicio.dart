class Bolo {
  double qntFarinha;
  String farinha;
  int qntOvos;
  String ovo;

  // o uso do "?" é para dizer que a variável pode ser nula, ou seja, ela pode não ter um valor atribuído. Isso é útil para evitar erros de null pointer quando tentamos acessar uma variável que ainda não foi inicializada.
  String? cereja;
  String _ingredienteSecreto = "canela"; // privado encapsulado
  int _qntDeIngredienteSecreto = 2;

  Bolo(this.qntFarinha, this.farinha, this.qntOvos, this.ovo);

  get ingredienteSecreto =>
      _ingredienteSecreto; // getter para acessar o ingrediente secreto
  get qntIngredienteSecreto =>
      _qntDeIngredienteSecreto; // getter para acessar a quantidade do ingrediente secreto

  set qntIngredienteSecreto(int valor) {
    if (valor < 1 || valor > 3) {
      //todos os bolos precisam de uma colhr de ingrediente secreto, então se o valor for menor que 1, ele não é válido
      print(
        "A quantidade do ingrediente secreto deve ser entre 1 e 3 colheres.",
      );
    } else {
      _qntDeIngredienteSecreto = valor;
    }
  }

  static void imprimirBorda(){
    print("============================================");
  }
}

mixin ImprimirDesconto(){
  void imprimirDesconto10(){
    print("Desconto de 10% para compras acima de R\$100,00!");
  }
}

abstract class ImpressaoNaTela {
  void imprimirIngredientesNatela();
}

class BoloLaranja extends Bolo implements ImpressaoNaTela {
  int qntLaranjas;
  String laranjas;

  BoloLaranja(this.qntLaranjas, this.laranjas)
    : super(1.5, "farinha de trigo", 3, "ovos caipiras");

  @override
  void imprimirIngredientesNatela() {
    print("Ingredientes do Bolo de Laranja:");
    print("- ${qntFarinha} xícaras de ${farinha}");
  }
}

void main() {
  var bolo2 = BoloLaranja(4, "laranjas");
  bolo2.imprimirIngredientesNatela();

  bolo2.qntIngredienteSecreto = 2;

  Bolo.imprimirBorda();
  print('${bolo2.qntIngredienteSecreto}'); 
  Bolo.imprimirBorda();
}
