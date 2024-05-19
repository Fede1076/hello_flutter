// main.dart
import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/gestor_inventory.dart';
import 'screens/table_inventory.dart';
import 'screens/gestor_clientes.dart';
import 'screens/table_clientes.dart';

void main() {
  runApp(MyApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 9, 133, 30)),
      ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required ThemeData theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Punto Ideal',
            theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 9, 133, 30)),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/GInventory', // Ruta inicial
      routes: {
        '/': (context) => LoginView(), // Ruta para login
        '/GInventory': (context) => Inventory(), // Ruta para añadir al inventario
        '/TInventory': (context) => DataTableInventory(), // Ruta para la tabala de inventario
        '/GClientes': (context) => GClientes(), // Ruta para la añadir clientes
        '/TClientes': (context) => DataTableClientes(), // Ruta para la tabla de clientes
      },
    );

  }
}


