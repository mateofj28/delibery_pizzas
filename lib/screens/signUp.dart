import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F5F5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
          
              SizedBox(height: 35),
          
              SizedBox(height: 100),
          
              Text(
                'Registrarse',
                style: TextStyle(
                  fontSize: 23, 
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D0C57)
                )
              ),
          
              Text(
                'Crea una cuenta para continuar.',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF9586A8) 
                  
                )
              ),
          
              SizedBox(height: 30),
          
          
              TextField(
                
                decoration: InputDecoration(
                    // Etiqueta del campo de texto
                  hintText: 'Ingrese su nombre completo', // Texto de ayuda dentro del campo de texto
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
          
              SizedBox(height: 16),
          
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    // Etiqueta del campo de texto
                  hintText: 'Ingrese su Email', // Texto de ayuda dentro del campo de texto
                  border: OutlineInputBorder( // Borde del campo de texto
                    borderRadius: BorderRadius.circular(8), // Radio de borde similar al de ElevatedButton
                    borderSide: BorderSide(color: Color(0xFF9586A8)), // Color del borde
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
                    color: Color(0xFF9586A8), // Color del texto de ayuda
                  ),
                ),
              ),

              SizedBox(height: 16),

              TextField(
                
                decoration: InputDecoration(
                    // Etiqueta del campo de texto
                  hintText: 'Ingrese fecha de nacimiento', // Texto de ayuda dentro del campo de texto
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

              SizedBox(height: 16),

              TextField(
                
                decoration: InputDecoration(
                    // Etiqueta del campo de texto
                  hintText: 'Ingrese su numero de telefono', // Texto de ayuda dentro del campo de texto
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

              SizedBox(height: 16),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    // Etiqueta del campo de texto
                  hintText: 'Ingrese la contrasena', // Texto de ayuda dentro del campo de texto
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
          
              SizedBox(height: 30),
          
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/login');
                }, 
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Color(0xFF0BCE83)),
                  minimumSize: MaterialStateProperty.all(Size(350, 50))
                ),
                child: Text('REGISTRARSE', style: TextStyle(color: Colors.white))
              ),
          
              SizedBox(height: 160),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '¿tienes una cuenta?', 
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF9586A8) 
                      
                    )
                  ),
          
                  SizedBox(width: 10),
          
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Inicia sesión', 
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF2D0C57),
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                ],
              )
          
          
                
          
          
          
            ],
          ),
        ),
      )
    );
  }
}








