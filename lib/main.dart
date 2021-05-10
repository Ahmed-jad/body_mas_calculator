 import 'package:body_mas_app/screens/about.dart';
import 'package:body_mas_app/screens/contact_me.dart';
import 'package:body_mas_app/screens/home.dart';
 import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  //home:Home(),

  //initialRoute: '/',
  routes: {
    '/': (context) => HomeScreen(),
     '/about':(context) => About(),
    '/contact_me':(context) => ContactMe()
  },
));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CULCULATOR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
       ),
       home: HomeScreen(),
      
    );
  }
}