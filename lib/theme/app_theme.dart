import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary= Color.fromRGBO(0, 65, 112, 1);
  static const Color iconscolor = Color.fromARGB(255, 249, 189, 10);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        // color primario
        primaryColor: primary,
        // appbar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0,
        ),
        // Estilos para los iconos
        iconTheme: const IconThemeData(
          color: iconscolor
        ),
        // text button theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary)
        ),
        // Floating action button
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5,  
        ),
        // Elevated button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
             primary: AppTheme.primary,
             shape: const StadiumBorder(),
             elevation: 0
        ),
        ),
        
        // Estilo de los inputs
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: primary,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30), 
              topRight: Radius.circular(10)), 
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: primary,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30), 
              topRight: Radius.circular(10)), 
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30), 
              topRight: Radius.circular(10)), 
          )

           

        )
  );
}