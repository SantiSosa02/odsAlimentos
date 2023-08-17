import 'package:flutter/material.dart';

import '../windgets/menu_appbar.dart';
import '../windgets/menu_drawer.dart';

class ScreenThird extends StatefulWidget {
  const ScreenThird({super.key});

  @override
  State<ScreenThird> createState() => _ScreenThirdState();
}

class _ScreenThirdState extends State<ScreenThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MenuAppBar(),
      drawer: MenuDrawer()
    );
  }
}

