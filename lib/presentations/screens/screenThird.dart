import 'package:flutter/material.dart';
//import 'package:ods_alimentos/presentations/screens/screenSecond.dart';
import 'package:intl/intl.dart'; 


import '../windgets/menu_appbar.dart';
import '../windgets/menu_drawer.dart';

class ScreenThird extends StatefulWidget {
  const ScreenThird({Key? key}) : super(key: key);

  @override
  State<ScreenThird> createState() => _ScreenThirdState();
}

class _ScreenThirdState extends State<ScreenThird> {
 List<Map<String, dynamic>> alimentos =  [
    {
      'Nombre': 'Cerdo',
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
    {
      'Nombre': 'Lentejas',
      'Cantidad': '12',
      'Fecha_vencimiento': DateTime(2017, 9, 7, 17, 30),
      'Categoria': 'Granos',
    },
    {
        'Nombre': 'Arroz',
        'Cantidad': '5',
        'Fecha_vencimiento': DateTime(2023, 10, 15, 14, 0),
        'Categoria': 'Granos'
    },
    {
        'Nombre': 'Espinaca',
        'Cantidad': '2',
        'Fecha_vencimiento': DateTime(2023, 8, 25, 12, 30),
        'Categoria': 'Vegetales'
    },
    {
        'Nombre': 'Pollo',
        'Cantidad': '2',
        'Fecha_vencimiento': DateTime(2023, 8, 20, 18, 15),
        'Categoria': 'Carnes'
    },
    {
        'Nombre': 'Leche',
        'Cantidad': '1',
        'Fecha_vencimiento': DateTime(2023, 9, 2, 10, 0),
        'Categoria': 'Lacteos'
    },
    {
        'Nombre': 'Manzana',
        'Cantidad': '8',
        'Fecha_vencimiento': DateTime(2023, 8, 22, 16, 45),
        'Categoria': 'Frutas'
    },
    {
        'Nombre': 'Quinua',
        'Cantidad': '800',
        'Fecha_vencimiento': DateTime(2023, 9, 10, 13, 15),
        'Categoria': 'Granos'
    },
    {
        'Nombre': 'Pimiento',
        'Cantidad': '3',
        'Fecha_vencimiento': DateTime(2023, 8, 23, 9, 0),
        'Categoria': 'Vegetales'
    },
    {
        'Nombre': 'Res',
        'Cantidad': '5',
        'Fecha_vencimiento': DateTime(2023, 8, 18, 17, 45),
        'Categoria': 'Carnes'
    },
    {
        'Nombre': 'Yogur',
        'Cantidad': '24',
        'Fecha_vencimiento': DateTime(2023, 9, 5, 11, 30),
        'Categoria': 'Lacteos'
    },
    {
        'Nombre': 'Uvas',
        'Cantidad': '23',
        'Fecha_vencimiento': DateTime(2023, 8, 24, 14, 15),
        'Categoria': 'Frutas'
    }
  ];

  List<Map<String, dynamic>> obtenerAlimentosProximosAVencer() {
    DateTime today = DateTime.now();
    DateTime tenDaysFromNow = today.add(Duration(days: 10));

    return alimentos.where((alimento) {
      DateTime fechaVencimiento = alimento['Fecha_vencimiento'];
      return fechaVencimiento.isBefore(tenDaysFromNow) &&
          fechaVencimiento.isAfter(today);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> alimentosProximosAVencer = obtenerAlimentosProximosAVencer();

    return Scaffold(
      appBar: const MenuAppBar(),
      drawer: const MenuDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Alimentos Próximos a Vencer',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: alimentosProximosAVencer.length,
              itemBuilder: (BuildContext context, int index) {
                Map<String, dynamic> alimento = alimentosProximosAVencer[index];
                return Card(
                  elevation: 4,
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    title: Text(
                      '${alimento['Nombre']}',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cantidad: ${alimento['Cantidad']}'),
                        Text('Fecha de vencimiento: ${DateFormat('dd/MM/yyyy').format(alimentos[index]['Fecha_vencimiento'])}',
                         style: const TextStyle(color: Colors.red) ,),
                        Text('Categoría: ${alimento['Categoria']}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
