import 'package:flutter/material.dart';

void main() => runApp(AppCinepolis());

class AppCinepolis extends StatelessWidget {
  const AppCinepolis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cinepolis',
      home: PeliculasFilaColumna(),
    );
  }
}//Fin clase AppCinepolis
class PeliculasFilaColumna extends StatelessWidget {
  const PeliculasFilaColumna({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos un color de texto e icono único para todos los cuadros
    const Color colorContenido = Colors.white;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cinepolis VALTIERRA",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[100],
        actions: const [
          Icon(Icons.movie, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.fastfood, color: Colors.black),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // FILA 1: Películas y Dulcería
            Expanded(
              child: Row(
                children: [
                  _crearCuadro(Colors.blue[900]!, Icons.movie_filter, "Películas", colorContenido),
                  const SizedBox(width: 12),
                  _crearCuadro(Colors.blue[800]!, Icons.fastfood, "Dulcería y comida", colorContenido),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // FILA 2: Empleados y Sucursales
            Expanded(
              child: Row(
                children: [
                  _crearCuadro(Colors.blue[700]!, Icons.engineering, "Empleados", colorContenido),
                  const SizedBox(width: 12),
                  _crearCuadro(Colors.blue[600]!, Icons.business, "Sucursales", colorContenido),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // FILA 3: Membresías y Clientes
            Expanded(
              child: Row(
                children: [
                  _crearCuadro(Colors.blue[500]!, Icons.credit_card, "Membresías", colorContenido),
                  const SizedBox(width: 12),
                  _crearCuadro(Colors.blue[400]!, Icons.person_pin, "Clientes", colorContenido),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Función (Widget) personalizada para no repetir código
  Widget _crearCuadro(Color colorFondo, IconData icono, String texto, Color colorTexto) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: colorFondo,
          borderRadius: BorderRadius.circular(15), // Bordes redondeados para que luzca mejor
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
          children: [
            Icon(icono, size: 40, color: colorTexto),
            const SizedBox(height: 10),
            Text(
              texto,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: colorTexto,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}