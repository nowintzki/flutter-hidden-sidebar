import 'package:flutter/material.dart';
import 'package:zoom_menu/zoom_scaffold.dart';

final Screen shoesScreen = new Screen(
    title: 'MYSHOES',
    background: new DecorationImage(
      image: new AssetImage('assets/glass_bk.jpg'),
      fit: BoxFit.cover,
    ),
    contentBuilder: (BuildContext context) {
      return new ListView(
          children: [
            new _ShoesCard(
                headImageAssetPath: 'assets/adidas_eqt.jpg',
                icon: Icons.shopping_cart,
                iconBackgroundColor: Colors.pinkAccent,
                title: 'Adidas EQT',
                subtitle: "SUPPORT ADV SHOES",
                heartCount: 84 
            ),
            new _ShoesCard(
                headImageAssetPath: 'assets/nike_air.jpg',
                icon: Icons.shopping_cart,
                iconBackgroundColor: Colors.black38,
                title: 'Nike Air',
                subtitle: "UPTEMPO B&W",
                heartCount: 84 
            ),
            new _ShoesCard(
                headImageAssetPath: 'assets/nike_kix.jpg',
                icon: Icons.shopping_cart,
                iconBackgroundColor: Colors.cyanAccent,
                title: 'Nike Kix',
                subtitle: "Kyrie 4",
                heartCount: 84
            ),
          ]
      );
    }
);

class _ShoesCard extends StatelessWidget {

  final String headImageAssetPath;
  final IconData icon;
  final Color iconBackgroundColor;
  final String title;
  final String subtitle;
  final int heartCount;

  _ShoesCard({
    this.headImageAssetPath,
    this.icon,
    this.iconBackgroundColor,
    this.title,
    this.subtitle,
    this.heartCount,
  });

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: new Card(
        elevation: 10.0,
        child: new Column(
          children: [
            new Image.asset(
              headImageAssetPath,
              width: double.infinity,
              height: 150.0,
              fit: BoxFit.cover,
            ),
            new Row(
              children: [
                new Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: new Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: new BoxDecoration(
                      color: iconBackgroundColor,
                      borderRadius: new BorderRadius.all(const Radius.circular(15.0)),
                    ),
                    child: new Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Text(
                        title,
                        style: const TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      new Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'bebas-neue',
                          letterSpacing: 1.0,
                          color: const Color(0xFFAAAAAA),
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  width: 2.0,
                  height: 70.0,
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      colors: [
                        Colors.white,
                        Colors.white,
                        const Color(0xFFAAAAAA),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: new Column(
                    children: [
                      new Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                      new Text(
                        '$heartCount',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}