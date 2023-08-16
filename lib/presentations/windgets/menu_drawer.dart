import 'package:flutter/material.dart';
import 'package:ods_alimentos/presentations/springs/screenFirst.dart';
import 'package:ods_alimentos/presentations/springs/screenFourth.dart';
import 'package:ods_alimentos/presentations/springs/screenSecond.dart';
import 'package:ods_alimentos/presentations/springs/screenThird.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 300,
            decoration:const BoxDecoration(
              color:  Color.fromARGB(255, 178, 222, 180),
              image: DecorationImage(image: AssetImage('assets/images/comida.jpeg'),
              fit:BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 15),
          ListTile(
            leading:const  Icon(Icons.home),
            title: const Text("Pagina principal",style: TextStyle(fontSize: 15),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenFirst(),
                ),
              );
            },
          ),
         const SizedBox(height: 15),
          ListTile(
            leading:const  Icon(Icons.restaurant),
            title: const Text("Todos los alimentos"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>const  ScreenSecond(),
                ),
              );
            },
          ),
         const SizedBox(height: 15),
          ListTile(
            leading: const Icon(Icons.date_range_rounded),
            title:const  Text("Alimentos cercanos a vencerse"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenThird(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          ListTile(
            leading: const Icon(Icons.category),
            title: const  Text("Alimentos por categoria"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>const  ScreenFourth(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
