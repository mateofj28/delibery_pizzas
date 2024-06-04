import 'package:flutter/material.dart';

class HomeAdminScreen extends StatelessWidget {
  const HomeAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F5F5),
      appBar: AppBar(
        title: Text("Holla charles"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.border_all_rounded),
          onPressed: (){
            Navigator.pushNamed(context, "/menuAdmin");
          },
        ),
      ),
      body: Column(
        children: [
          Text("Lista de ventas"),
          Text("Lista de ventas finalizadas"),
          Text("Lista repartidores"),
        ],
      ),
    );
  }
}