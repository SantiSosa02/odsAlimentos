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
    return Scaffold(
      appBar: MenuAppBar(),
      drawer: MenuDrawer(),
    );
  }
}
