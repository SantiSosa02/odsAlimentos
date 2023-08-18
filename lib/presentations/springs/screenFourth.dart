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
  List<Map<String, dynamic>> categorias = [
    {'nombre': 'Granos'},
    {'nombre': 'Lácteos'},
    {'nombre': 'Carnes'},
    {'nombre': 'Vegetales'},
    {'nombre': 'Frutas'}
  ];

  Map<String, List<Map<String, dynamic>>> productosCategoria = {
    'Granos': [
      {
        'nombre': 'Arroz',
        'cantidad': 100,
        'fechaVencimiento': '12-06-2030',
        'img': 'assets/images/arroz.jpg'
      },
      {
        'nombre': 'Trigo',
        'cantidad': 50,
        'fechaVencimiento': '15-08-2029',
        'img': 'assets/images/pan.jpg'
      },
    ],
    'Lácteos': [
      {
        'nombre': 'Leche',
        'cantidad': 2,
        'fechaVencimiento': '15-07-2023',
        'img': 'assets/images/leche.jpg'
      },
      {
        'nombre': 'Yogur',
        'cantidad': 5,
        'fechaVencimiento': '20-08-2023',
        'img': 'assets/images/cereal.jpg'
      },
    ],
    'Carnes': [
      {
        'nombre': 'Res',
        'cantidad': 26,
        'fechaVencimiento': '15-07-2023',
        'img': 'assets/images/res.jpg'
      },
      {
        'nombre': 'cerdo',
        'cantidad': 40,
        'fechaVencimiento': '10-09-2023',
        'img': 'assets/images/cerdo.jpg'
      },
    ],
    'Vegetales': [
      {
        'nombre': 'Papas',
        'cantidad': 26,
        'fechaVencimiento': '15-07-2023',
        'img': 'assets/images/papas.jpg'
      },
      {
        'nombre': 'Platano',
        'cantidad': 40,
        'fechaVencimiento': '10-09-2023',
        'img': 'assets/images/platano.jpg'
      },
    ],
    'Frutas': [
      {
        'nombre': 'Manzana',
        'cantidad': 26,
        'fechaVencimiento': '15-07-2023',
        'img': 'assets/images/manzana.jpg'
      },
      {
        'nombre': 'Pera',
        'cantidad': 40,
        'fechaVencimiento': '10-09-2023',
        'img': 'assets/images/pera.jpg'
      },
    ],
  };

  String seleccionarCategoria = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MenuAppBar(),
      drawer: MenuDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Categorías'),
            SizedBox(height: 20),
            for (var categoria in categorias)
              GestureDetector(
                onTap: () {
                  setState(() {
                    seleccionarCategoria = categoria['nombre'];
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: seleccionarCategoria == categoria['nombre']
                          ? Colors.blue
                          : Colors.grey,
                    ),
                  ),
                  child: Text(categoria['nombre']),
                ),
              ),
            SizedBox(height: 20),
            if (seleccionarCategoria.isNotEmpty)
              Column(
                children: [
                  Text('Productos en la categoría $seleccionarCategoria:'),
                  for (var product in productosCategoria[seleccionarCategoria]!)
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.green),
                            ),
                            child: Image.asset(product['img']),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nombre: ${product['nombre']}'),
                              Text('Cantidad: ${product['cantidad']}'),
                              Text(
                                  'Fecha Vencimiento: ${product['fechaVencimiento']}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
