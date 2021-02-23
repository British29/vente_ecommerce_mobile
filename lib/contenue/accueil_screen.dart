import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AcceuilApp extends StatefulWidget {
  @override
  _AcceuilAppState createState() => _AcceuilAppState();
}

class _AcceuilAppState extends State<AcceuilApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: 33,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 33,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Accueil'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Mes Infos'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text('Mon Panier'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Déconnexion'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.99,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 10, right: 10),
                    child: ButtonTheme(
                      buttonColor: Colors.redAccent,
                      child: OutlineButton(
                        onPressed: () {},
                        highlightedBorderColor: Colors.redAccent,
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                        ),
                        child: Text(
                          'Chanter',
                          style: TextStyle(
                              color: HexColor("#00BCD4"), fontSize: 21),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 10, right: 10),
                    child: ButtonTheme(
                      buttonColor: Colors.white,
                      child: OutlineButton(
                        onPressed: () {},
                        highlightedBorderColor: Colors.cyanAccent,
                        borderSide: BorderSide(
                          color: Colors.cyanAccent,
                        ),
                        child: Text(
                          'Manger',
                          style: TextStyle(color: Colors.black, fontSize: 21),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 10, right: 10),
                    child: ButtonTheme(
                      buttonColor: Colors.white,
                      child: OutlineButton(
                        onPressed: () {},
                        highlightedBorderColor: Colors.cyanAccent,
                        borderSide: BorderSide(
                          color: Colors.yellowAccent,
                        ),
                        child: Text(
                          'Danser',
                          style: TextStyle(color: Colors.black, fontSize: 21),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 10, right: 10),
                    child: ButtonTheme(
                      buttonColor: Colors.white,
                      child: OutlineButton(
                        onPressed: () {},
                        highlightedBorderColor: Colors.cyanAccent,
                        borderSide: BorderSide(
                          color: Colors.blueAccent,
                        ),
                        child: Text(
                          'Boire',
                          style: TextStyle(color: Colors.black, fontSize: 21),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 10, right: 10),
                    child: ButtonTheme(
                      buttonColor: Colors.white,
                      child: OutlineButton(
                        onPressed: () {},
                        highlightedBorderColor: Colors.cyanAccent,
                        borderSide: BorderSide(
                          color: Colors.greenAccent,
                        ),
                        child: Text(
                          'Regarder',
                          style: TextStyle(color: Colors.black, fontSize: 21),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25,
                      left: 10,
                    ),
                    child: ButtonTheme(
                      buttonColor: Colors.white,
                      child: OutlineButton(
                        onPressed: () {},
                        highlightedBorderColor: Colors.cyanAccent,
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                        child: Text(
                          'Amuser',
                          style: TextStyle(color: Colors.black, fontSize: 21),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CarouselSlider(
              options: CarouselOptions(height: 200.0),
              items: [
                'Image Plat 1',
                'Image Plat 2',
                'Image Plat 3',
                'Image Plat 4',
                'Image Plat 5',
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 3.0),
                        decoration: BoxDecoration(color: HexColor("#00BCD4")),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}