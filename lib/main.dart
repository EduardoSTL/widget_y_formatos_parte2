import 'package:flutter/material.dart';
import 'package:widget_y_formatos/config/theme/app_theme.dart';
import 'package:widget_y_formatos/presentation/screens/buttons/buttons_screen.dart';
import 'package:widget_y_formatos/presentation/screens/home/home_screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      //obtener un theme a partir del metodo getTheme
      theme: AppTheme(selectedColor: 6).getTheme(),
      //definimos home screen como pantalla de inicio o menu que nos llevara a las demas vistas de la app
      home: const HomeScreen(
        
      ),
    );
  }
}