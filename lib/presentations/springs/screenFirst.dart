import 'package:flutter/material.dart';
import 'package:ods_alimentos/presentations/springs/screenFourth.dart';
import 'package:ods_alimentos/presentations/springs/screenSecond.dart';
import 'package:ods_alimentos/presentations/springs/screenThird.dart';
import 'package:ods_alimentos/presentations/windgets/menu_appbar.dart';
import 'package:ods_alimentos/presentations/windgets/menu_drawer.dart';

class ScreenFirst extends StatefulWidget {
  const ScreenFirst({super.key});

  @override
  State<ScreenFirst> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenFirst> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: const MenuAppBar(),
      drawer: const MenuDrawer(),
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 400,
            child: Image(
              image: AssetImage('assets/images/comida7.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            bottom:480,
            left: 120,
            right: 0,
              child:  Text(
                "¡Alimentos!",
                style: TextStyle(
                  fontSize: 30, 
                  fontFamily: 'Caprismo',
                  color:Color.fromARGB(255, 251, 232, 192)),
            ),
          ),
          Positioned(
            bottom: 255,
            left: 0,
            right: 0,
            child: Container(
              color: const Color.fromARGB(255, 230, 216, 216),
              padding: const EdgeInsets.all(20),
              child: const Text(
                "En NutriSabor, saborea experiencias culinarias únicas con alimentos frescos y saludables. Desde carnes de calidad hasta vibrantes vegetales y frutas, explora un mundo de sabores excepcionales. Descubre cómo transformamos ingredientes en momentos memorables.",
                style: TextStyle(fontSize: 15, fontFamily: 'Lora'),
              ),
            
            ),
          ),
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreenSecond(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 143, 183, 215),
                      minimumSize: Size(45, 45)
                      ),
                      child: const Text("Todos los Alimentos"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreenThird(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 188, 168, 167),
                      minimumSize: Size(45, 45)
                      ),
                      child: const Text("Alimentos a vencer"),
                    ),
                  ],
                ),
                SizedBox(height: 16), // Espacio entre los dos primeros botones y el tercero
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenFourth(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 173, 209, 169),
                  minimumSize: Size(45, 45)
                  ),
                  child: const Text("Alimentos por catgoria"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
