import 'package:flutter/material.dart';
import 'package:widget_y_formatos/config/router/app_router.dart';
import 'package:widget_y_formatos/config/theme/app_theme.dart';
//import 'package:widget_y_formatos/presentation/screens/buttons/buttons_screen.dart';
//import 'package:widget_y_formatos/presentation/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router( 
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      //obtener un theme a partir del metodo getTheme
      theme: AppTheme(selectedColor: 6).getTheme(),  
    );
  }
}