import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {

  List<String> itemMenu = [
    'Informacion personal', 
    'Historial', 
    'Hacerme repartirdor',
    'Cerrar sesion',
  ];

  List<IconData> iconsMenu = [
    Icons.contact_page_rounded, 
    Icons.history, 
    Icons.delivery_dining, 
    Icons.logout, 
  ];

  MenuScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F5F5),
      body: GridView.count(
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        crossAxisCount: 2,
        children: List.generate(itemMenu.length, (index){
          return GestureDetector(
            onTap: (){
              

              if ( index == 0){
                Navigator.pushNamed(context, '/myProfile');
              } else if (index == 3){
                Navigator.pushNamed(context, '/login');
              }

            },
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFF0BCE83),
                    child: Icon(iconsMenu[index], size: 30, color: Colors.white,),
                  ),
            
                  SizedBox(height: 10,),
            
                  Text(
                    itemMenu[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  
  }
}