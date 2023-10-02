import 'package:go_router/go_router.dart';
import 'package:widget_y_formatos/presentation/screens/cards/cards_screen.dart';
import 'package:widget_y_formatos/presentation/screens/buttons/buttons_screen.dart';
import 'package:widget_y_formatos/presentation/screens/home/home_screen.dart';
import 'package:widget_y_formatos/presentation/screens/screens.dart';

//* GoRouter config
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(), 
    ),

    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(), 
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(), 
    ),

    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(), 
    ),

    /* GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(), 
    ),

    GoRoute(
      path: '/infinitescroll',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => const InfiniteScrollScreen(), 
    ), */
  ],
);