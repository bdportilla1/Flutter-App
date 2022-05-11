import 'package:componentes_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _slider_value = 100;
  bool _slider_enable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar de Slider'),
        
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.iconscolor,
            value: _slider_value, 
            onChanged: _slider_enable ? (value){
              _slider_value = value;
                setState(() {
              });
            }: null
            ),

            Checkbox(
              activeColor: AppTheme.iconscolor,
              value: _slider_enable, 
              onChanged: (val){
                _slider_enable = val?? true;
                setState(() {
            
                });
              }),
            CheckboxListTile(
              value: _slider_enable,
              activeColor: AppTheme.iconscolor,
              title: const Text('Habilitar slider'),
              onChanged: (value){
                setState(() {
                  _slider_enable = value ?? true;
                });
              }
            ),


            // adaptativo para IOS
            SwitchListTile.adaptive(
              value: _slider_enable,
              activeColor: AppTheme.iconscolor,
              title: const Text('Habilitar slider'),
              onChanged: (value){
                setState(() {
                  _slider_enable = value;
                });
              }
            ),
            const AboutListTile(),
           

              
             Expanded(
               child: SingleChildScrollView(
                 child: Image(
                  image: const NetworkImage('https://assets.puzzlefactory.pl/puzzle/305/241/original.jpg'),
                  fit: BoxFit.contain, //para hacer que la img no se salga
                  width: _slider_value,
                           ),
               ),
             ),
            const SizedBox(height: 100)
      
      ],)
    );
  }
}