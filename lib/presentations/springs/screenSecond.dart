import 'package:flutter/material.dart';
import 'package:ods_alimentos/presentations/windgets/menu_appbar.dart';
import 'package:ods_alimentos/presentations/windgets/menu_drawer.dart';

class ScreenSecond extends StatefulWidget {
  const ScreenSecond({Key? key}) : super(key: key);

  @override
  State<ScreenSecond> createState() => _ScreenSecondState();
}

class _ScreenSecondState extends State<ScreenSecond> {
  List<Map<String, dynamic>> alimentos = [
    {
      'Nombre': 'Res',
      'Cantidad': '10',
      'Fecha_vencimiento': DateTime(2017, 9, 7, 17, 30),
      'Categoria': 'Carne',
    },
    {
      'Nombre': 'Pollo',
      'Cantidad': '12',
      'Fecha_vencimiento': DateTime(2017, 9, 7, 17, 30),
      'Categoria': 'Carne',
    },
    // Agrega más elementos a la lista si es necesario
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MenuAppBar(),
      drawer: MenuDrawer(),
      body: ListView.builder(
        itemCount: alimentos.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4, // Elevación de la tarjeta
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(
                '${alimentos[index]['Nombre']}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Cantidad: ${alimentos[index]['Cantidad']}'),
                  Text('Fecha de vencimiento: ${alimentos[index]['Fecha_vencimiento']}'),
                  Text('Categoría: ${alimentos[index]['Categoria']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
