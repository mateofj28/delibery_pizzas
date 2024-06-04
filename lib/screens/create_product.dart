import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';


class CreateProductScreen extends StatefulWidget {

  CreateProductScreen({super.key});

  @override
  State<CreateProductScreen> createState() => _CreateProductScreenState();
}

class _CreateProductScreenState extends State<CreateProductScreen> {

  final _controller = TextEditingController();
  final _formatter = NumberFormat.currency(locale: 'es_CO', symbol: '\$');

  List<String> ingredients = [
    "Salsa de tomate",
    "Queso mozzarella",
    "Albahaca fresca",
    "Pepperoni",
  ];

  List<String> categorias = [
    "Clasica",
    "Especial",
  ];

  void _formatPrice() {
    final text = _controller.text;
    if (text.isNotEmpty) {
      final value = double.parse(text.replaceAll(RegExp(r'[^0-9]'), ''));
      _controller.value = TextEditingValue(
        text: _formatter.format(value),
        selection: TextSelection.collapsed(
          offset: _formatter.format(value).length,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    List<bool> isSelected = List.generate(ingredients.length, (_) => false);
    return Scaffold(
      backgroundColor: Color(0xFFF6F5F5),
      appBar: AppBar(
        title: Text("Crear pizza"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          
          children: [

            SizedBox(height: 40,),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    // Etiqueta del campo de texto
                  hintText: 'Ingrese el nombre de la pizza', // Texto de ayuda dentro del campo de texto
                  border: OutlineInputBorder( // Borde del campo de texto
                    borderRadius: BorderRadius.circular(8), // Radio de borde similar al de ElevatedButton
                    borderSide: BorderSide(color: Color(0xFF9586A8) ), // Color del borde
                  ),
                  focusedBorder: OutlineInputBorder( // Borde cuando el campo de texto está enfocado
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFF9586A8)), // Color del borde cuando está enfocado
                  ),
                  enabledBorder: OutlineInputBorder( // Borde cuando el campo de texto no está enfocado
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFF9586A8)), // Color del borde cuando no está enfocado
                  ),
                  hintStyle: TextStyle( // Estilo del texto de ayuda
                    color: Color(0xFF9586A8) , // Color del texto de ayuda
                  ),
                ),
              ),
            ),

            SizedBox(height: 30,),

            Text("Seleccionar Categoria", textAlign: TextAlign.start, style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.0),
              child: DropdownButton(
                items: const [
                  DropdownMenuItem(child: Text("Clasica"), value: "clasica",),
                  DropdownMenuItem(child: Text("Especial"), value: "especial",),
                ], 
                onChanged: (value){
              
                },
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 18.0
                ),
                
                dropdownColor: Colors.white,
                isExpanded: true,
                elevation: 8,
                underline: Container(
                  height: 2,
                  color: Colors.blue,
                ),
              ),
            ),

            SizedBox(height: 40,),
        
            Text("Agregar Ingredientes", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
        
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 280,
                  child: TextField(
                    decoration: InputDecoration(
                        // Etiqueta del campo de texto
                      hintText: 'Ingrese el nombre del Ingrediente', // Texto de ayuda dentro del campo de texto
                      border: OutlineInputBorder( // Borde del campo de texto
                        borderRadius: BorderRadius.circular(8), // Radio de borde similar al de ElevatedButton
                        borderSide: BorderSide(color: Color(0xFF9586A8) ), // Color del borde
                      ),
                      focusedBorder: OutlineInputBorder( // Borde cuando el campo de texto está enfocado
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFF9586A8)), // Color del borde cuando está enfocado
                      ),
                      enabledBorder: OutlineInputBorder( // Borde cuando el campo de texto no está enfocado
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFF9586A8)), // Color del borde cuando no está enfocado
                      ),
                      hintStyle: TextStyle( // Estilo del texto de ayuda
                        color: Color(0xFF9586A8) , // Color del texto de ayuda
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10,),

                ElevatedButton(onPressed: (){}, child: const Icon(Icons.add))
              ],
            ),

            SizedBox(height: 40,),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                ],
                decoration: InputDecoration(
                    // Etiqueta del campo de texto
                  hintText: 'Precio', // Texto de ayuda dentro del campo de texto
                  border: OutlineInputBorder( // Borde del campo de texto
                    borderRadius: BorderRadius.circular(8), // Radio de borde similar al de ElevatedButton
                    borderSide: BorderSide(color: Color(0xFF9586A8) ), // Color del borde
                  ),
                  focusedBorder: OutlineInputBorder( // Borde cuando el campo de texto está enfocado
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFF9586A8)), // Color del borde cuando está enfocado
                  ),
                  enabledBorder: OutlineInputBorder( // Borde cuando el campo de texto no está enfocado
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFF9586A8)), // Color del borde cuando no está enfocado
                  ),
                  hintStyle: TextStyle( // Estilo del texto de ayuda
                    color: Color(0xFF9586A8) , // Color del texto de ayuda
                  ),
                  prefixText: '\$',
                ),
              ),
            ),

            SizedBox(height: 240,),


            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/homeAdmin');
              }, 
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Color(0xFF0BCE83)),
                minimumSize: MaterialStateProperty.all(Size(250, 50))
              ),
              child: Text('GUARDAR', style: TextStyle(color: Colors.white))
            ),
          ],
        ),
      ),
    );
  }
}