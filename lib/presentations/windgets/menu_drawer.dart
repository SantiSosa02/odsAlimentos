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
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 134, 213, 216)),
            child: Text(
              "Menu",
              style: TextStyle(fontSize: 34),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home page"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenFirst(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.access_time_sharp),
            title: Text("Second page"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenSecond(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box_sharp),
            title: Text("Thrid page"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenThird(),
                ),
              );
            },
          ),
           ListTile(
            leading: Icon(Icons.account_box_sharp),
            title: Text("Thrid page"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenFourth(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
