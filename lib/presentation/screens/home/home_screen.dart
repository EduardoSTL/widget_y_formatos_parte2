import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_y_formatos/config/menu/menu_items.dart';
import 'package:widget_y_formatos/presentation/screens/buttons/buttons_screen.dart';
import 'package:widget_y_formatos/presentation/screens/cards/cards_screen.dart';
import 'package:widget_y_formatos/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter + Material 3')
        ),
      body: const _HomeView(),
      drawer: SideMenu(scaffoldKey:  scaffoldKey,),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index){
        final menuItem = appMenuItems[index];
        return _CustomListTitle(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
final MenuItem menuItem;

  const _CustomListTitle({
    required this.menuItem
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      //* leading: ordena al inicio
      leading: Icon(menuItem.icon, color: colors.primary),
      //* trailing ordena al final
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text(menuItem.subTitle),
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonsScreen(),
        //   ),
        // );
        // Navigator.pushNamed(context, menuItem.link);
        // context.pushNamed(CardsScreen.name); 
        context.push(menuItem.link);
      },
    );
  }
}