//
// produto_controller.dart
//
import 'package:flutter/material.dart';

import '../model/produto_model.dart';

class ProdutoController extends ChangeNotifier{

  final List<Produto> _produtos = [
    Produto(nome: 'Notebook', preco: 4800.00),
    Produto(nome: 'Mouse', preco: 90.00),
    Produto(nome: 'Teclado', preco: 220.00),
    Produto(nome: 'Monitor', preco: 800.00),
    Produto(nome: 'Smartphone', preco: 3200.00),
    Produto(nome: 'Cooler', preco: 200.00),
  ];

  bool _visualizarLista = true;

  List<Produto> get produtos => _produtos;
  bool get visualizarList => _visualizarLista;

  void alterarVisualizacao(valor){
    _visualizarLista = valor;
    notifyListeners();
  }

  void removerItem(index){
    _produtos.removeAt(index);
    notifyListeners();
  }

}