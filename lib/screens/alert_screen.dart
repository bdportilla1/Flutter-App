import 'dart:io';

import 'package:componentes_app/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  // dialogo ios
  void displayDialogo2(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context){
        return CupertinoAlertDialog(
          title: Text('Titulo cupertino'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Es el contenido del alert mijo'),
              SizedBox(height: 10),
              FlutterLogo(size: 70,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: const Text('Cancelar'))
          ],
        );
      });
  }


  // dialogo android
  void displayDialogo(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){
        return AlertDialog(
          elevation: 5,
          title: const Text('Aqui texto'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Es el contenido del alert mijo'),
              SizedBox(height: 10),
              FlutterLogo(size: 70,)

            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: const Text('Cancelar'))
          ],


        );
      }
      );
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
           //estilo de boton del apptheme
          /* style: ElevatedButton.styleFrom(
             primary: AppTheme.primary,
             shape: const StadiumBorder(),
             elevation: 0,
           ),*/
           child: const Padding(
             padding: EdgeInsets.all(20),
             child: Text('Mostrar alerta', style: TextStyle(fontSize: 16 ),),
           ),
           onPressed: (){
             //displayDialogo(context);
             // Ejecuta la alerta para ios o android depende del dispositivo
             Platform.isAndroid 
             ? displayDialogo(context)
             : displayDialogo2(context);

           }, 
           ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        }),
    );
  }
}