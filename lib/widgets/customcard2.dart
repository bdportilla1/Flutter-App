import 'package:componentes_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
class CustomCard2 extends StatelessWidget {

  final String imgUrl;
  final String? name;

  const CustomCard2({
    Key? key,
    required this.imgUrl, 
    this.name
    }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 50,
      shadowColor: AppTheme.primary.withOpacity(0.7),
      child: Column(
        children: [
          FadeInImage(  
            image: NetworkImage(imgUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
            ),
            if(name!=null)
              Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name?? 'No se ha capturado texto'),
            )

        ],
      ),
    );
  }
}