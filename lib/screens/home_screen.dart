
import 'package:flutter/material.dart';


import 'package:componentes_app/router/app_routes.dart';
import 'package:componentes_app/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menu_Options = AppRoutes.menu_options;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter APP'),
        elevation: 0,
      ),
      body: ListView.separated(
       itemBuilder: (context, index) => ListTile(
         title: Text((menu_Options[index].name)),
         // propiedad antes del texto
         //leading: Icon(menu_Options[index].icon, color: AppTheme.primary,),
         leading: Icon(menu_Options[index].icon, color: AppTheme.iconscolor),
         onTap: (){
           /*
           final route = MaterialPageRoute(
             builder: (context) => const ListViewScreen());
           Navigator.push(context, route);*/
           Navigator.pushNamed(context, menu_Options[index].route);

         },
       ),
       separatorBuilder: (_, __) => const Divider(), 
       itemCount: menu_Options.length)
    );
  }
}