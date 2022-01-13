import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      body:

      Column(
        children: [
      Expanded(
      child: Container(
      color: Colors.red
        ,
      )),


      Expanded(
            child: Container(
              child: Form(child:
              TextField(
                decoration: InputDecoration(
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),


              ),

        ),
            ),

      ),

          Expanded(
           child:
                  Container(
                    color: Colors.red
                    ,
                    child :Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          color: Colors.pink,
                          height: 27,
                        ),

                        Container(
                          height: 150,
                          color: Colors.white,
                        )
                      ],
                    )
                  ),
               ),
      ]),



    );
  }
}
