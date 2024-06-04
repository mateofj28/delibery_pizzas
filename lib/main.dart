import 'package:delibery_pizzas/screens/create_product.dart';
import 'package:delibery_pizzas/screens/create_repartidor.dart';
import 'package:delibery_pizzas/screens/home.dart';
import 'package:delibery_pizzas/screens/home_admin.dart';
import 'package:delibery_pizzas/screens/login.dart';
import 'package:delibery_pizzas/screens/menu.dart';
import 'package:delibery_pizzas/screens/menu_admin.dart';
import 'package:delibery_pizzas/screens/my_profile.dart';
import 'package:delibery_pizzas/screens/signUp.dart';
import 'package:delibery_pizzas/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signUp': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
        '/menu': (context) => MenuScreen(),
        '/myProfile': (context) => MyProfileScreen(),
        '/homeAdmin': (context) => HomeAdminScreen(),
        '/menuAdmin': (context) => MenuAdminScreen(),
        '/createProduct': (context) => CreateProductScreen(),
        '/createRepartidor': (context) => CreateRepartidorScreen(),
      },
    );
  }
}
