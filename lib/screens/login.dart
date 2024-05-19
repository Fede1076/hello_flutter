import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final IconData account = IconData(0xf522, fontFamily: 'MaterialIcons'); // Icono para la cuenta de usuario
  final IconData password = IconData(0xe47a, fontFamily: 'MaterialIcons'); // Icono para la contraseña

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Tamaño de la pantalla

    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar sesión'), // Título de la barra de aplicación
        //automaticallyImplyLeading: false, // Oculta la flecha para retroceder
      ),
      body: Center(
        child: Container(
          width: size.width * 0.9, // Ancho del contenedor
          height: size.height * 0.5, // Alto del contenedor
          padding: EdgeInsets.only(left: 30, right: 30, bottom: 40), // Espaciado interno
          decoration: BoxDecoration(
            color: Colors.white, // Color de fondo del contenedor
            borderRadius: BorderRadius.circular(20), // Bordes redondeados del contenedor
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Color de la sombra
                spreadRadius: 2, // Radio de propagación de la sombra
                blurRadius: 5, // Radio de desenfoque de la sombra
                offset: Offset(0, 3), // Desplazamiento de la sombra
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo de la empresa
              Image.asset(
                'assets/icon/icon.png', // Ruta de la imagen del logo
                width: size.width * 0.3, // Ancho del logo
              ),
              Text('¡Bienvenido!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), // Texto de bienvenida
              Text('Ingrese su usuario y contraseña', style: TextStyle(fontSize: 15)), // Texto de instrucción
              SizedBox(height: 15), // Espacio vertical
              // Campo de texto para el usuario
              TextField(
                keyboardType: TextInputType.name, // Tipo de teclado para el campo de texto
                decoration: InputDecoration(
                  labelText: 'Usuario', // Etiqueta del campo de texto
                  border: OutlineInputBorder(), // Estilo del borde del campo de texto
                  icon: Icon(account), // Icono asociado al campo de texto
                ),
                onChanged: (value) {}, // Acción al cambiar el valor del campo de texto
              ),
              SizedBox(height: 10), // Espacio vertical
              // Campo de texto para la contraseña
              TextField(
                keyboardType: TextInputType.emailAddress, // Tipo de teclado para el campo de texto
                decoration: InputDecoration(
                  labelText: 'Contraseña', // Etiqueta del campo de texto
                  border: OutlineInputBorder(), // Estilo del borde del campo de texto
                  icon: Icon(password), // Icono asociado al campo de texto
                ),
                onChanged: (value) {}, // Acción al cambiar el valor del campo de texto
              ),
              SizedBox(height: 10), // Espacio vertical
              // Botón para iniciar sesión
              ElevatedButton(
                onPressed: () {}, // Acción al presionar el botón
                child: Text('Iniciar sesión'), // Texto del botón
              ),
            ],
          ),
        ),
      ),
    );
  }
}
