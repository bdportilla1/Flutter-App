import 'package:flutter/material.dart';

class ListViewScreen2 extends StatelessWidget {

  final options = const ['Perro', 'Gato', 'Kuala', 'Macaco'];
   
  const ListViewScreen2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes App'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.indigo,),
          onTap: (){

          },
          ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: options.length,
        
        )
    );
  }
}

