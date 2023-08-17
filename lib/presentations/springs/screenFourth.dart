import 'package:flutter/material.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/comida3.jpeg')),
            SizedBox(height: 20),
            Text('Nombre: $nombre'),
            Text('Cantidad: $cantidad'),
            Text('Fecha Vencimiento: $fechaVencimiento'),
            Text('Categoria: $categoria')
          ],
        ),
      ),
    
    );
  }
}
