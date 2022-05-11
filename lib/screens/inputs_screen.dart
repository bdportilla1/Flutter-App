import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> form_values = {
      'first_name' : 'Bryant',
      'last_name'  : 'Portilla',
      'email'      : 'bdportilla1@utpl.edu.ec',
      'password'   : '1234',
      'role'       : 'Admin',

    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Input AppBar'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,

            child: Column(
              children:  [
                CustomInputField(labelText: 'Nombre', helperText: 'Nombre de usuario', formProperty: 'first_name', formValues: form_values),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'Apellido', helperText: 'Apellido de usuario', formProperty: 'last_name', formValues: form_values),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'Correo', helperText: 'Correo de usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: form_values),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'Contraseña', helperText: 'Escriba su contraseña', espass: true, formProperty: 'password', formValues: form_values),
                const SizedBox(height: 30,),

                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                  ], 
                  onChanged: (value) {
                    print(value);
                    form_values['role'] = value ?? 'Admin';
                    },
                ),
                const SizedBox(height: 30,),


                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                    ),
                  onPressed: (){

                    // para eliminar el texto en pantalla
                    FocusScope.of(context).requestFocus(FocusNode());

                    if( !myFormKey.currentState!.validate()){
                      print('Formulario no valido');
                      return;

                    }
                   

                    print(form_values);
          
                  }, 
                  )
          
              ]
              ),
          ),
          ),
        )
    );
  }
}

