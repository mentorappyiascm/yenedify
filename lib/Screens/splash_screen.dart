import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'login.dart';


class loading_Screen extends StatefulWidget {

  @override
  _loading_ScreenState createState() => _loading_ScreenState();
}

class _loading_ScreenState extends State<loading_Screen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Login()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1A1A4E),
        body:
        Center(
            child : SpinKitSquareCircle(
              color: Colors.white,
              // size: 70.0,
            )

        )
    );
  }
}

