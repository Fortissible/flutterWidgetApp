import 'package:flutter/material.dart';
import 'package:flutter_widget_app/detail_screen.dart';
import 'package:flutter_widget_app/home_screen.dart';

void main() => runApp(const TourismApp());


class TourismApp extends StatelessWidget{
  const TourismApp({Key? key, }) : super(key:key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "wisata turisme",
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}

