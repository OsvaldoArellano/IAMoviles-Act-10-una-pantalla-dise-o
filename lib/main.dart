import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50], // Fondo general suave

      // ===== APPBAR =====
appBar: AppBar(
  title: Text(
    "La Casita de Papel",
    style: TextStyle(
      color: Colors.white, // 👈 Texto blanco
      fontWeight: FontWeight.bold,
    ),
  ),
  centerTitle: true,
  backgroundColor: Colors.red,
  iconTheme: IconThemeData(color: Colors.white), // 👈 Ícono también blanco
  actions: [
    IconButton(
      icon: Icon(Icons.person),
      onPressed: () {},
    )
  ],
),

      // ===== NAVBAR INFERIOR =====
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Productos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: "Contacto",
          ),
        ],
      ),

      // ===== CUERPO =====
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [

            // Título Productos
            Center(
              child: Text(
                "Productos",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Texto blanco
                ),
              ),
            ),

            SizedBox(height: 10),

            // Grid de productos
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.9, // 👈 Hace los cuadros más pequeños
                children: [
                  productoContainer("Lápices",
                      "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/a.png"),
                  productoContainer("Juegos Geometricos",
                      "https://cdn-icons-png.flaticon.com/512/13563/13563093.png"),
                  productoContainer("Material Didactico",
                      "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/b.png"),
                  productoContainer("Hojas",
                      "https://cdn-icons-png.flaticon.com/512/2991/2991108.png"),
                  productoContainer("Borradores",
                      "https://thumbs.dreamstime.com/b/elemento-escolar-borrador-icono-doodle-mano-dibujado-s%C3%ADmbolo-del-clipart-de-dibujo-la-l%C3%ADnea-dibujos-animados-coloridos-398221358.jpg"),
                  productoContainer("Otros",
                      "https://cdn-icons-png.flaticon.com/512/1828/1828817.png"),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  // ===== MÉTODO PARA CREAR LOS CONTAINERS =====
  Widget productoContainer(String titulo, String imagenUrl) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 219, 89, 80), // Color de fondo del container
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(2, 4),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imagenUrl,
              height: 100, // Imagen más grande
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            Text(
              titulo,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
