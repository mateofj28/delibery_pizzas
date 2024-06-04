import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F5F5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 35),

          SizedBox(height: 100),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              '¡Regístrate hoy y recibe', 
              style: TextStyle(
                fontSize: 23, 
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D0C57)
              )
            ),
          ),

          

          Row(
            children: [
              Container(
                width: 230,
                height: 190,                
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        'hasta 15', 
                        style: TextStyle(
                          fontSize: 53, 
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2D0C57)
                        ),
                      ),
                  
                      Text(
                        'días', 
                        style: TextStyle(
                          fontSize: 53, 
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2D0C57)
                        ),
                      ),
                  
                      Text(
                        'de envíos gratis!', 
                        style: TextStyle(
                          fontSize: 23, 
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2D0C57)
                        )
                      ),
                    ],
                  ),
                )
              ),

              Container(
                width: 160,
                height: 190,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.shop, size: 90, color: Color(0xFF9586A8))
                  ],
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                Text(
                  '*Valido para nuevos usuarios.', 
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF9586A8) 
                    
                  )
                ),
            
                Text(
                  '*Aplican T&C', 
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF9586A8)
                    
                  )
                ),
            
              ],
            ),
          ),


          SizedBox(height: 280),


          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(       
              children: [
            
                Text(
                  'Continua con:', 
                  style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D0C57)
                  )
                ),
            
                SizedBox(height: 12),

                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/login');
                  }, 
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Color(0xFF0BCE83)),
                    minimumSize: MaterialStateProperty.all(Size(350, 50))
                  ),
                  child: Text('INICIAR SESIÓN', style: TextStyle(color: Colors.white))
                ),

                SizedBox(height: 10),
            
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/signUp');
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Color(0xFFF6F5F5)),
                    minimumSize: MaterialStateProperty.all(Size(350, 50))
                  ), 
                  child: Text('REGISTRARSE', style: TextStyle(color: Color(0xFF9586A8)))
                ),
            
              ],
            ),
          )

        ],
      )
    );
  }
}