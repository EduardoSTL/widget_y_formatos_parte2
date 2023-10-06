import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_y_formatos/config/router/app_router.dart';
import 'package:widget_y_formatos/config/theme/app_theme.dart';
import 'package:widget_y_formatos/presentation/provider/theme_provider.dart';
//import 'package:widget_y_formatos/presentation/screens/buttons/buttons_screen.dart';
//import 'package:widget_y_formatos/presentation/screens/home/home_screen.dart';

void main() {
  runApp(
    const ProviderScope(
    child: MainApp(),
  )
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router( 
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      //obtener un theme a partir del metodo getTheme
      theme: appTheme.getTheme()  
    );
  }
}