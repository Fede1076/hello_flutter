// pantalla2.dart
import 'package:flutter/material.dart';

// Este widget representa la pantalla principal del gestor de clientes.
class GClientes extends StatelessWidget {

  // Este método construye la interfaz de usuario del widget.
  @override
  Widget build(BuildContext context) {

    // Obtiene el tamaño de la pantalla.
    final size = MediaQuery.of(context).size;
    
    // Retorna un Scaffold, que es un layout estructural básico para la pantalla.
    return Scaffold(

      // Define la barra de aplicación con un título.
      appBar: AppBar(
        title: Text('Clientes'),
        automaticallyImplyLeading: false, // Oculta la flecha para retroceder
      ),


      // Define el cuerpo de la pantalla como una columna que contiene varios elementos.
      body: Column(
        
        children: [
          // Añade un espacio en la parte superior de la columna.
          SizedBox(height: size.height * 0.03),

          // Crea una fila para alinear los elementos en el centro horizontal.
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Contenedor que contiene el formulario de agregar cliente.
              Container(

                // Define el ancho del contenedor como el 95% del ancho de la pantalla.
                width: size.width * 0.95,

                // Define el relleno dentro del contenedor.
                padding: EdgeInsets.all(20),

                // Define la decoración del contenedor, que incluye un color de fondo, bordes redondeados y sombra.
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),

                // Contenido del contenedor, que incluye un título y campos para agregar clientes.
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Título del formulario para agregar clientes.
                    Text('Añadir cliente', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                    // Añade un pequeño espacio después del título.
                    SizedBox(height: 10),

                    // Primera fila de campos de texto para nombre y contacto del cliente.
                    Row(
                      children: [

                        // Expande el primer campo para ocupar todo el espacio disponible.
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              // Campo de texto para ingresar el nombre del cliente.
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Nombre', 
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Añade un pequeño espacio entre los campos de texto.
                        SizedBox(width: 10),

                        // Expande el segundo campo para ocupar todo el espacio disponible.
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              // Campo de texto para ingresar el contacto del cliente.
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Contacto', 
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Añade un pequeño espacio después de la primera fila de campos.
                    SizedBox(height: 10),

                    // Segunda fila de campos de texto para dirección y correo del cliente.
                    Row(
                      children: [

                        // Expande el primer campo para ocupar todo el espacio disponible.
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              // Campo de texto para ingresar la dirección del cliente.
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Dirección', 
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Añade un pequeño espacio entre los campos de texto.
                        SizedBox(width: 10),

                        // Expande el segundo campo para ocupar todo el espacio disponible.
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              // Campo de texto para ingresar el correo del cliente.
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Correo', 
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Añade un pequeño espacio después de la segunda fila de campos.
                    SizedBox(height: 10),

                    // Tercera fila de campos de texto para cédula y razón social del cliente.
                    Row(
                      children: [

                        // Expande el primer campo para ocupar todo el espacio disponible.
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              // Campo de texto para ingresar la cédula del cliente.
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Cédula', 
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Añade un pequeño espacio entre los campos de texto.
                        SizedBox(width: 10),

                        // Expande el segundo campo para ocupar todo el espacio disponible.
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              // Campo de texto para ingresar la razón social del cliente.
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Razón social', 
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Añade un pequeño espacio después de la tercera fila de campos.
                    SizedBox(height: 10),

                    // Botón para añadir el cliente a la lista.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Añadir'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Añade un espacio adicional después del formulario de agregar clientes.
          SizedBox(height: size.height * 0.03),

          // Botón para ver más detalles de la lista de clientes.
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Contenedor que contiene el botón para ver más detalles.
              Container(

                // Define el ancho del contenedor como el 95% del ancho de la pantalla.
                width: size.width * 0.95,

                // Define el relleno dentro del contenedor.
                padding: EdgeInsets.all(20),

                // Define la decoración del contenedor, que incluye un color de fondo, bordes redondeados y sombra.
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),

                // Contenido del contenedor, que incluye un título y un botón para ver más detalles.
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Título del botón para ver más detalles.
                    Text('Lista de clientes', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

                    // Añade un pequeño espacio después del título.
                    SizedBox(height: 10),

                    // Botón para mostrar más detalles de la lista de clientes.
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/TClientes'); //Pantalla listado de clientes
                      },
                      child: Text('Ver más'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      
      // Define la barra de navegación inferior.
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Clientes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: 'Inventario',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Cerrar sesión',
          ),
        ],
        // Define la acción a realizar cuando se toca un elemento de la barra de navegación inferior
        onTap: (index) {
          if (index == 0 ) {
            Navigator.pushNamed(context, '/GClientes');
          }
          else if (index == 1) {
            Navigator.pushNamed(context, '/GInventory');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/');
          }
        },
      ),
    );
  }  
}
