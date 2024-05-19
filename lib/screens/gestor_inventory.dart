import 'package:flutter/material.dart';

class Inventory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtiene el tamaño de la pantalla
    final size = MediaQuery.of(context).size;

    // Retorna un Scaffold, que es un layout estructural básico para la pantalla
    return Scaffold(
      // Define la barra de aplicación con un título y oculta la flecha de retroceso
      appBar: AppBar(
        title: Text('Inventario'),
        automaticallyImplyLeading: false, // Oculta la flecha para retroceder
      ),
      // Define el cuerpo de la pantalla como una columna que contiene varios elementos
      body: Column(
        children: [
          SizedBox(height: size.height * 0.03), // Añade un espacio en la parte superior de la columna
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Contenedor para agregar producto
              Container(
                width: size.width * 0.95, // Define el ancho del contenedor
                padding: EdgeInsets.all(20), // Define el relleno dentro del contenedor
                decoration: BoxDecoration(
                  // Define la decoración del contenedor, que incluye color de fondo, bordes redondeados y sombra
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
                // Contenido del contenedor, que incluye título, campos para agregar productos y botón para añadir
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Añadir producto', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), // Título
                    SizedBox(height: 10), // Espacio después del título
                    Row(
                      children: [
                        // Campo de texto para ingresar el nombre del producto
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Producto',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10), // Espacio entre los campos de texto
                        // Campo de texto para ingresar la cantidad total del producto
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Cantidad Total',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Espacio después de la primera fila de campos
                    Row(
                      children: [
                        // Campo de texto para ingresar la cantidad en bodega del producto
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Cantidad Bod.',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10), // Espacio entre los campos de texto
                        // Campo de texto para ingresar la cantidad exhibida del producto
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Cantidad Excib.',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Espacio después de la segunda fila de campos
                    Row(
                      children: [
                        // Campo de texto para ingresar el precio unitario del producto
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Precio Uni.',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10), // Espacio entre los campos de texto
                        // Campo de texto para ingresar el precio por caja del producto
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Precio Caja',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Espacio adicional después de los campos de texto
                    // Botón para añadir el producto al inventario
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
          SizedBox(height: size.height * 0.02), // Espacio después del contenedor de agregar producto
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Contenedor para la tabla de inventario
              Container(
                width: size.width * 0.95, // Define el ancho del contenedor
                padding: EdgeInsets.all(20), // Define el relleno dentro del contenedor
                decoration: BoxDecoration(
                  // Define la decoración del contenedor, que incluye color de fondo, bordes redondeados y sombra
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
                // Contenido del contenedor, que incluye título y botón para ver más
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tabla inventario', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), // Título
                    SizedBox(height: 10), // Espacio después del título
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/TInventory'); //Pantalla para tabla del inventario
                      },
                      child: Text('Ver más'), // Botón para ver más detalles del inventario
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      // Define el widget de navegación inferior con íconos y etiquetas
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: 'Inventario',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Clientes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Cerrar sesión',
          ),
        ],
        // Define la acción a realizar cuando se toca un elemento de la barra de navegación inferior
        onTap: (index) {
          if (index == 0) {
            // Navega a la pantalla de inicio cuando se selecciona la opción de inventario
            Navigator.pushNamed(context, '/GInventory');
          }
          else if (index == 1) {
            // Navega a la pantalla de clientes cuando se selecciona la opción de clientes
            Navigator.pushNamed(context, '/GClientes');
          } else if (index == 2) {
            // Navega a la pantalla de gestión de inventario cuando se selecciona la opción de gestión de inventario
            Navigator.pushNamed(context, '/');
          }
        },
      ),
    );
  }
}
