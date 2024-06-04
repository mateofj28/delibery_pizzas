import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delibery_pizzas/models/pizza.dart';

class DaoProduct {

  final _fire = FirebaseFirestore.instance;

  createProduct(){
    try {
      _fire.collection("pizzas").add({
        "nombre": "Pizza vegetariana",
        "categoria":"Nueva",
        "precio":"12000",
        "ingredientes":[
          "salsa de ensalada",
          "verduras",
          "queso"
        ],
      } as Map<String, dynamic>);
    } catch (e) {
        throw Exception(e.toString());
    }
  }


  readPizzas() async {
    try {
      final data = await _fire.collection("pizzas").get();
      print(data.docs[0].toString());
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<Pizza>> readPizzasByCategory(String category) async {
    try {
      final querySnapshot = await _fire.collection("pizzas")
          .where('categoria', isEqualTo: category)
          .get();

      final pizzas = querySnapshot.docs.map((doc) => Pizza.fromJson(doc.data())).toList();
      return pizzas;
    } catch (e) {
      throw Exception(e.toString());
    }
  }


}