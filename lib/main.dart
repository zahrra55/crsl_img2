import 'package:crsl_img/home_page.dart';
import 'package:crsl_img/login.dart';
import 'package:flutter/material.dart';

import 'splash.dart';
void main() {
    runApp( MaterialApp(home: splash(),debugShowCheckedModeBanner: false,));
}

class crausle extends StatefulWidget {
  const crausle({Key? key}) : super(key: key);

  @override
  State<crausle> createState() => _crausleState();
}

class _crausleState extends State<crausle> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: splash(),);
  }
}

