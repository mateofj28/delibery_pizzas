
import 'package:delibey/providers/pizzas_providers.dart';
import 'package:delibey/screens/create_product.dart';
import 'package:delibey/screens/create_repartidor.dart';
import 'package:delibey/screens/home.dart';
import 'package:delibey/screens/home_admin.dart';
import 'package:delibey/screens/login.dart';
import 'package:delibey/screens/menu.dart';
import 'package:delibey/screens/menu_admin.dart';
import 'package:delibey/screens/my_profile.dart';
import 'package:delibey/screens/signUp.dart';
import 'package:delibey/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PizzasProviders())
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
