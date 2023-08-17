import 'package:flutter/material.dart';
import 'package:ods_alimentos/presentations/springs/screenFirst.dart';
import 'package:ods_alimentos/presentations/windgets/menu_appbar.dart';
import 'package:ods_alimentos/presentations/windgets/menu_drawer.dart';

class ScreenFourth extends StatefulWidget {
  const ScreenFourth({super.key});

  @override
  State<ScreenFourth> createState() => _ScreenFourthState();
}

class _ScreenFourthState extends State<ScreenFourth> {
  @override
  Widget build(BuildContext context) {
    String nombre = 'Arroz';
    int cantidad = 100;
    String fechaVencimiento = '12-06-2030';
    String categoria = 'Granos';

    return Scaffold(
      appBar: MenuAppBar(),
      drawer: MenuDrawer(),
      body: Center(
          child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
              ),
              child: Image(
                image: AssetImage('assets/images/comida3.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            //Espacio
            SizedBox(width: 20),

            Column(
              children: [
                Text('Nombre: $nombre'),
                Text('Cantidad: $cantidad'),
                Text('Fecha Vencimiento: $fechaVencimiento'),
                Text('Categoria: $categoria'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenFirst()));
                  },
                  child: Text('mostrar'),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
