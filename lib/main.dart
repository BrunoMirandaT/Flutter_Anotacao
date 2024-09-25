import 'package:flutter/material.dart';
import 'package:myapp/menu.dart';

void main() {
  runApp( MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(18, 18, 18,1.0)),
    debugShowCheckedModeBanner: false,
    home: menu(),
  ));
}