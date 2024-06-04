import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';


class CreateRepartidorScreen extends StatefulWidget {

  CreateRepartidorScreen({super.key});

  @override
  State<CreateRepartidorScreen> createState() => _CreateRepartidorScreenState();
}

class _CreateRepartidorScreenState extends State<CreateRepartidorScreen> {

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
        title: Text("Crear Repartidor"),
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
                  hintText: 'Nombre', // Texto de ayuda dentro del campo de texto
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

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    // Etiqueta del campo de texto
                  hintText: 'Placa de la motocicleta', // Texto de ayuda dentro del campo de texto
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

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                    // Etiqueta del campo de texto
                  hintText: ' Telefono', // Texto de ayuda dentro del campo de texto
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
                  prefix: Text("+52")
                ),
              ),
            ),
          
            SizedBox(height: 420,),

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