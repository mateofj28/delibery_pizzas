import 'package:flutter/material.dart';

class MenuAdminScreen extends StatelessWidget {

  List<String> itemMenu = [
    'Informacion personal', 
    'Crear repartidor',
    'Crear producto',
    'Ventas',
    'Ventas finalizadas',
    'Cerrar sesion',
  ];

  List<IconData> iconsMenu = [
    Icons.contact_page_rounded, 
    Icons.motorcycle, 
    Icons.add_box, 
    Icons.bar_chart, 
    Icons.delivery_dining, 
    Icons.logout, 
  ];

  MenuAdminScreen({super.key});



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
              } else if (index == 2){
                Navigator.pushNamed(context, '/createProduct');
              } else if (index == 1){
                Navigator.pushNamed(context, '/createRepartidor');
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