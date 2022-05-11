import 'package:componentes_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:componentes_app/screens/screens.dart';


class AppRoutes{
  static const initialRoute = 'home_screen';
  static final menu_options = <MenuOptions>[
    //MenuOptions(route: 'home_screen', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.access_alarm), Icons.list
    MenuOptions(route: 'listview_screen', name: 'Listview Screen 1', screen: const ListViewScreen(), icon: Icons.list),
    MenuOptions(route: 'listview_screen2', name: 'Listview Screen 2', screen: const ListViewScreen2(), icon: Icons.list_alt),
    MenuOptions(route: 'alert_screen', name: 'Alert Screen', screen: const AlertScreen(), icon: Icons.add_a_photo),
    MenuOptions(route: 'card_screen', name: 'Card Screen', screen: const CardScreen(), icon: Icons.card_giftcard),
    MenuOptions(route: 'avatar_screen', name: 'Avatar Screen', screen: const AvatarScreen(), icon: Icons.align_vertical_center_sharp),
    MenuOptions(route: 'animated_screen', name: 'Animated Screen', screen: const AnimatedScreen(), icon: Icons.align_horizontal_left_sharp),
    MenuOptions(route: 'inputs_screen', name: 'Inputs Screen', screen: const InputsScreen(), icon: Icons.input),
    MenuOptions(route: 'slider_screen', name: 'Slider Screen', screen: const SliderScreen(), icon: Icons.slideshow_rounded),
    MenuOptions(route: 'list_view_builder_screen', name: 'List View Builder Screen', screen: const ListViewBuilderScreen(), icon: Icons.abc_rounded),
  
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> app_routes = {};
    app_routes.addAll({'home_screen': (BuildContext context)=> const HomeScreen()});



    

    for (final option in menu_options){
      app_routes.addAll({option.route: (BuildContext context)=> option.screen});

    }

    return app_routes;
  }


/*
  static Map<String, Widget Function(BuildContext)> routes = 
    {
        'home_screen': (BuildContext context) => const HomeScreen(),
        'listview_screen': (BuildContext context) => const ListViewScreen(),
        'listview_screen2': (BuildContext context) => const ListViewScreen2(),
        'alert_screen': (BuildContext context) => const AlertScreen(),
        'card_screen': (BuildContext context) => const CardScreen(),
      };*/



    static Route<dynamic> onGenerateRoute (RouteSettings settings){
          return MaterialPageRoute(
              builder: (context) => const ListViewScreen()
              );

    } 



}