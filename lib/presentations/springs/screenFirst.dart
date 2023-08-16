import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text(
          "Alimentos",
          style: TextStyle(
            color: const Color.fromARGB(255, 216, 148, 144),
          ),
        ),
      ),
      drawer: MenuDrawer(),
    );
  }
}
