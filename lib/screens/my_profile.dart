import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F5F5),
      appBar: AppBar(
        title: const Text(" Mi perfil "),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  // Etiqueta del campo de texto
                hintText: 'Ingrese su correo electrónico', // Texto de ayuda dentro del campo de texto
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

          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/home');
            }, 
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(const Color(0xFF0BCE83)),
              minimumSize: MaterialStateProperty.all(const Size(350, 50))
            ),
            child: const Text('GUARDAR', style: TextStyle(color: Colors.white))
          ),




        ],
      ),
    );
  }
}