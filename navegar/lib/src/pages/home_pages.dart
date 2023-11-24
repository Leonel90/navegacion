import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:navegar/src/pages/sing_in.dart';
import 'package:navegar/src/pages/sing_up.dart';
import 'package:navegar/src/widgets/icon-containers.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Color.fromARGB(255, 0, 175, 52),
            Color.fromARGB(0, 195, 135, 134),
          ], begin: Alignment.topLeft)),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
            children: <Widget>[
              //Aqui le ubicaremos el url de una imagen.
              SizedBox(
                width: 250,
                height: 250,
                child: ClipPath(
                  child: Image.asset(
                    'images/Lobo.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                "Bienvenidos a mi curso",
                style: TextStyle(
                  fontFamily: "PermanentMarKer",
                  fontSize: 47.0,
                ),
              ),
              Divider(
                height: 30.0,
              ),
              Text(
                "Ejercicio N.-003",
                style: TextStyle(
                  fontFamily: "PermanentMarKer",
                  fontSize: 39.0,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    final route =
                        MaterialPageRoute(builder: (context) => SingUp());
                    Navigator.push(context, route);
                  },
                  child: Text(
                    "SING UP",
                    style: TextStyle(
                        color: Colors.orange,
                        fontFamily: "FredokaOne",
                        fontSize: 30.0),
                  ),
                ),
              ),
              Divider(
                height: 30.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    final route =
                        MaterialPageRoute(builder: (context) => SingIn());
                    Navigator.push(context, route);
                  },
                  child: Text(
                    "SING IN",
                    style: TextStyle(
                        color: Colors.orange,
                        fontFamily: "FredokaOne",
                        fontSize: 30.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
