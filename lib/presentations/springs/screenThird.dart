import 'package:flutter/material.dart';
import 'package:ods_alimentos/presentations/springs/screenSecond.dart';

import '../windgets/menu_appbar.dart';
import '../windgets/menu_drawer.dart';

class ScreenThird extends StatefulWidget {
  const ScreenThird({Key? key}) : super(key: key);

  @override
  State<ScreenThird> createState() => _ScreenThirdState();
}

class _ScreenThirdState extends State<ScreenThird> {
  List<Map<String, dynamic>> alimentos = ScreenSecond.alimentos;

List<Map<String, dynamic>> obtenerAlimentosProximosAVencer() {
  DateTime today = DateTime.now();
  
  DateTime tenDaysFromNow = today.add(Duration(days: 10));

  return alimentos.where((alimento) {
    DateTime fechaVencimiento = alimento['Fecha_vencimiento'];
    return fechaVencimiento.isBefore(tenDaysFromNow) || fechaVencimiento.isAtSameMomentAs(today);
    
  }).toList();
}


  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> alimentosProximosAVencer = obtenerAlimentosProximosAVencer();

    return Scaffold(
      appBar: MenuAppBar(),
      drawer: MenuDrawer(),
      body: ListView.builder(
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
                  Text('Fecha de vencimiento: ${alimento['Fecha_vencimiento']}'),
                  Text('Categoría: ${alimento['Categoria']}'),
                ],
              ),
            ),
          );
        },
      ),
      
    );
  }
}
