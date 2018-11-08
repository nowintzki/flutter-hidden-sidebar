import 'package:flutter/material.dart';
import 'package:zoom_menu/menu_screen.dart';
import 'package:zoom_menu/other_screen.dart';
import 'package:zoom_menu/shoes_screen.dart';
import 'package:zoom_menu/zoom_scaffold.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My Shoes',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final menu = new Menu(
    items: [
      new MenuItem(
        id: 'myshoes',
        title: 'MYSHOES',
      ),
      new MenuItem(
        id: 'other1',
        title: 'BEST SELLER',
      ),
      new MenuItem(
        id: 'other2',
        title: 'HELP US GROW',
      ),
      new MenuItem(
        id: 'other3',
        title: 'SETTINGS',
      ),
    ],
  );

  var selectedMenuItemId = 'myshoes';
  var activeScreen = shoesScreen;

  @override
  Widget build(BuildContext context) {
    return new ZoomScaffold(
      menuScreen: new MenuScreen(
        menu: menu,
        selectedItemId: selectedMenuItemId,
        onMenuItemSelected: (String itemId) {
          selectedMenuItemId = itemId;
          if (itemId == 'myshoes') {
            setState(() => activeScreen = shoesScreen);
          } else {
            setState(() => activeScreen = otherScreen);
          }
        },
      ),
      contentScreen: activeScreen,
    );
  }
}
