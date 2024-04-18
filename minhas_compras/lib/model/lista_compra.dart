import 'package:minhas_compras/model/produto.dart';

class ListaDeCompras {
  String nome;
  DateTime dataCriacao;
  List<Produto> listaProdutos;

  ListaDeCompras({
    required this.nome,
    required this.dataCriacao,
    required this.listaProdutos,
  });
}
