import 'package:flutter/material.dart';
import 'package:navegar/src/pages/home_pages.dart';
import 'package:navegar/src/pages/menu_lateral.dart';
import 'package:navegar/src/pages/sing_in.dart';
import 'package:navegar/src/pages/sing_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //Aki creamos las rutas de navegación
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "Home",
      routes: <String, WidgetBuilder>{
        "Home": (BuildContext context) => HomePages(),
        "Sing_in": (BuildContext context) => SingIn(),
        "Sing_up": (BuildContext context) => SingUp(),
        "MenuLateral": (BuildContext context) => MenuLateral()
      },
    );
  }
}
