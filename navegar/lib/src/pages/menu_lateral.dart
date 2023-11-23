import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Principal"),
        backgroundColor: Color.fromARGB(255, 132, 41, 41),
      ),
      body: Center(
        child: Center(
          child: Text("Contenido del Proyecto"),
        ),
      ),
      drawer: Drawer(
        //Menu lateral
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Leonel Sangolquiza"),
              accountEmail: Text("loa.sangolquiza@yavirac.edu.ec"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage("images/mil.jpg"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  foregroundImage: AssetImage("images/mil.jpg"),
                ),
                CircleAvatar(
                  foregroundImage: AssetImage("images/mil.jpg"),
                ),
              ],
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 44, 192, 59)),
            ),
            Padding(
              padding: EdgeInsets.all(14.0),
              child: Text("Etiqueta 1"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Primera opci"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Primera opci"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Primera opci"),
            ),
            Padding(
              padding: EdgeInsets.all(14.0),
              child: Text("Etiqueta 1"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Primera opci"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Primera opci"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Primera opci"),
            ),
          ],
        ),
      ),
    );
  }
}
