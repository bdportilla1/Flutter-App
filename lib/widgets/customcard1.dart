import 'package:flutter/material.dart';

import 'package:componentes_app/theme/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.phone_bluetooth_speaker_outlined, color: AppTheme.primary,),
            title: Text('Titulo'),
            subtitle: Text('Voluptate est in velit ex id pariatur consequat do deserunt exercitation Lorem proident ea.'),  
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Ok'),
                  ),
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancelar'),
                  ),  
              ],
            ),
          )
        ],
        )
      );
  }
} 