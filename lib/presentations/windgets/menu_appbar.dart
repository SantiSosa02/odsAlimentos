import 'package:flutter/material.dart';

void main() => runApp (const MenuAppBar());

class MenuAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MenuAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("NutriSabor",style: TextStyle(
        fontSize: 23,
        fontFamily: 'Caprismo',
        color: Color.fromARGB(255, 250, 229, 227),
      ),
      ),
      centerTitle: true,
      backgroundColor:Color.fromARGB(255, 192, 23, 23),
      
      );
      
  }
  
  @override
  Size get preferredSize => Size(0, kToolbarHeight);
}