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
        color: Color.fromARGB(255, 179, 152, 150),
      ),
      ),
      centerTitle: true,
      backgroundColor:const  Color.fromARGB(255, 218, 214, 214),
      
      );
      
  }
  
  @override
  Size get preferredSize => Size(0, kToolbarHeight);
}