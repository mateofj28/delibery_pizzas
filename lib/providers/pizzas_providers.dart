import 'package:delibery_pizzas/repository/repo_product.dart';
import 'package:flutter/material.dart';

class PizzasProviders extends ChangeNotifier {

  late List<dynamic> ventas;
  final _repo = DaoProduct();

  PizzasProviders();

  getPizzas(){
    _repo.readPizzas();
    notifyListeners();
  }


}