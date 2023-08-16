import 'package:flutter/material.dart';
import 'package:ods_alimentos/presentations/windgets/menu_appbar.dart';
import 'package:ods_alimentos/presentations/windgets/menu_drawer.dart';

class ScreenFirst extends StatefulWidget {
  const ScreenFirst({super.key});

  @override
  State<ScreenFirst> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenFirst> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  MenuAppBar(),
      drawer:  MenuDrawer(),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                Image(image: AssetImage('assets/images/comida3.jpeg'),
                ),
              ],
              ),
            )
          ],
          ),
        )
    );
  }
}