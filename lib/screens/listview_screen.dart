import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {

  final options = const ['Perro', 'Gato', 'Kuala', 'Macaco'];
   
  const ListViewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes App'),
      ),
      body: ListView(
        children: [
          ...options.map(
            (animal) => ListTile(
              title: Text(animal),
              trailing: const Icon(Icons.arrow_forward_ios),
            )).toList()
        ],
       
      )

    );
  }
}

