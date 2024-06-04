import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class HomeScreen extends StatelessWidget {

  List<String> categoriasPizza = [
  'Clásicas',
  'Carnes',
  'Vegetales',
  'Gourmet',
  'Mariscos',
  'Blancas',
  'Regionales',
  'Veganas',
];

List<Map<String, dynamic>> pizzaCatalog = [
  {
    'nombre': 'Pizza Clásica Margarita',
    'ingredientes': [
      'Salsa de tomate',
      'Mozzarella fresca',
      'Albahaca fresca',
      'Aceite de oliva virgen extra',
      'Sal y pimienta al gusto',
    ],
    'precio': 10000, // Precio promedio en pesos colombianos (COP)
  },
  {
    'nombre': 'Pizza Cuatro Quesos',
    'ingredientes': [
      'Salsa de tomate (opcional)',
      'Mozzarella',
      'Gorgonzola',
      'Parmesano',
      'Fontina',
    ],
    'precio': 12500, // Precio promedio en pesos colombianos (COP)
  },
  {
    'nombre': 'Pizza pollo con crema',
    'ingredientes': [
      'Salsa bechamel',
      'Pollo desmenuzado',
      'Mozzarella',
      'Champiniones',
      'Perejil',
    ],
    'precio': 17000, // Precio promedio en pesos colombianos (COP)
  },
  {
    'nombre': 'Pizza Cuatro Estaciones',
    'ingredientes': [
      'Salsa de tomate',
      'Mozzarella',
      'Jamon',
      'Tomate fresco',
      'albahaca',
      'Parmesano',
      'Fontina',
    ],
    'precio':20000, // Precio promedio en pesos colombianos (COP)
  },
  // ... Add the remaining pizza data in the same format ...
];

  NumberFormat format = NumberFormat.currency(locale: 'en_US', symbol: '\$', decimalDigits: 0);
  
  


  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F5F5),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.border_all_sharp), 
          onPressed: () { 
            Navigator.pushNamed(context, '/menu');
          },
        ),
        title: const Text('Barrio acacias'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.edit_location_alt_outlined), 
            onPressed: (){
              print("Pantalla agregar nueva ubicacion...");
            },
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.count(
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
                crossAxisCount: 4,
                children: List.generate(categoriasPizza.length, (index){
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xFF0BCE83),
                          child: Icon(
                            Icons.local_pizza, 
                            size: 25, 
                            color: Colors.white
                          ),
                        ),
              
                        SizedBox(height: 10,),
              
                        Text(
                          categoriasPizza[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  );
                }),
                ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Algunas pizzas",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  
                    ),
                  ),
                ),

                Container(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: pizzaCatalog.length,
                    itemBuilder: (_, index){
                      return Container(
                        width: 300,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          children: [

                            SizedBox(height: 15 ,),

                            Container(
                              width: 270,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),

                            SizedBox(height: 15,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(pizzaCatalog[index]['nombre']),
                                Text(
                                  format.format(
                                    pizzaCatalog[index]['precio']
                                  ), 
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                                
                              ],
                            )
                          ]
                        ),
                      );
                    }
                  ),
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}

