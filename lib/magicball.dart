import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Magicball extends StatefulWidget {
  Magicball({Key? key}) : super(key: key);

  @override
  State<Magicball> createState() => _MagicballState();
}

class _MagicballState extends State<Magicball> {
  int num = 1;

  void display() {
    num = Random().nextInt(4) + 1; //n-1
    setState(() {
      num;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        
        title: Text(
          "Magic Ball",
          style: TextStyle(
            fontSize: 25,
            color: Colors.green,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: GestureDetector(
            onTap: () {
              display();
            },
            child: CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage("images/ball$num.png"),
            ),
          ),
        ),
      ),
    );
  }
}
