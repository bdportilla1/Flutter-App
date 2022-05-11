import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
    final String? hintText;
    final String? labelText;
    final String? helperText;
    final IconData? icon;
    final IconData? suffixIcon;
    final TextInputType? keyboardType;
    final bool espass;

    // forms
    final String formProperty;
    final Map<String, String> formValues;

  const CustomInputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.keyboardType, 
    this.espass = false, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: espass,
      // cada cambio
      onChanged: (val){
        formValues[formProperty] = val;
      },
      // validar condiciones del input
      validator: (value){
        if(value == null) {
          return 'Este campo es requerido';
        }else if(value.length<3){
          return 'El campo no puede ser menor a 3';
        }
    
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //prefixIcon: Icon(Icons.precision_manufacturing), 
        icon: icon == null ? null : Icon(icon), 
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        
      ),


    );
  }
}