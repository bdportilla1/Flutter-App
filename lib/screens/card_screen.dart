import 'package:flutter/material.dart';


import 'package:componentes_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard1(),
          SizedBox(height: 20),
          CustomCard2(imgUrl: 'https://fondosmil.com/fondo/2254.jpg', name: 'Imagen 1',),
          SizedBox(height: 20),
          CustomCard2(imgUrl: 'https://fondosmil.com/fondo/2256.jpg',),
          SizedBox(height: 20),
          CustomCard2(imgUrl: 'https://fondosmil.com/fondo/2255.jpg',name: 'Imagen 3',),
          SizedBox(height: 20),
          CustomCard2(imgUrl: 'https://fondosmil.com/fondo/2257.jpg',),
          
        
        ],
      )
    );
  }
}

