import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: new ThemeData(primarySwatch: Colors.red),
            home:  new HomePage(title: 'Flutter Demo Home Page')
        );
    }
}