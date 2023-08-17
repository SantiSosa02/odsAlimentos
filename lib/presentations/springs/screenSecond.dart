import 'package:flutter/material.dart';
import 'package:ods_alimentos/presentations/windgets/menu_appbar.dart';
import 'package:ods_alimentos/presentations/windgets/menu_drawer.dart';



class ScreenSecond extends StatefulWidget {
  const ScreenSecond({super.key});

  @override
  State<ScreenSecond> createState() => _ScreenSecondState();
}

class _ScreenSecondState extends State<ScreenSecond> {
  @override
  Widget build(BuildContext context) {
        List alimentos = [
      {'Nombre':'Martin', 'Cantidad':'10', 'Fecha_vencimiento':DateTime(2017, 9, 7, 17, 30), 'Categoria':'Carne'},
    ];

    return Scaffold(
    appBar: MenuAppBar(),
    drawer: MenuDrawer(),
      body: ListView.builder(

      itemCount: alimentos.length,
      itemBuilder: (BuildContext context, int index) {
        
          return Row(
            children:[
              Text('$index - ${alimentos[index]['Nombre']} ${alimentos[index]['Cantidad']} ${alimentos[index]['Fecha_vencimiento']} ${alimentos[index]['Categoria']}'),

              // Text(' - ${alimentos[index]['Estado']}', style: TextStyle(color: usuarios[index]['Estado'] == 'Activo' ? Colors.green : Colors.red)),
              // Image.asset('assets/img/parrot.jpg', width: 40),
              // Image.network(usuarios[index]['img'], width: 40)
            ]
          );

      },
    )
    );
  }
}