import 'package:flutter/material.dart';

class home extends StatelessWidget {
  home({ Key? key }) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    var container = Container(
    height: 100.0,
    width: 250,
    child: TextFormField(
   obscureText: true,
   decoration: const InputDecoration(
     border: OutlineInputBorder(
       
     ),
     hintText: 'Enter the New Password',
      fillColor: Colors.grey,
        filled: true,
     
      
   ),
  ),
  );
    return SafeArea(child: Scaffold(
     backgroundColor: Colors.black,
      body:
      Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(children:
       [
        SizedBox(height: 120.0,),
      Row(
           children:[
              Text('Create',
                style: TextStyle(
                color: Colors.white,
              fontSize: 40.0,
        ),
        ),
           ] //c
           ),
            SizedBox(height: 15.0,),
        Row(
           children:[
             Text('New Password',
                style: TextStyle(
                color: Colors.white,
              fontSize: 40.0,
        ),
        )  
      ]
      ),
       SizedBox(height: 20.0,),
      Row(

children: [
  Container(
    height: 100.0,
    width: 250,
    child: TextFormField(
   obscureText: true,
   decoration: const InputDecoration(
     border: OutlineInputBorder(
       
     ),
     hintText: 'Enter the New Password',
      fillColor: Colors.grey,
        filled: true,
     
      
   ),
  ),
  )
],
      ),


     SizedBox(height: 3.0,),
      Row(

children: [
  Container(
    height: 100.0,
    width: 250,
    child: TextFormField(
   obscureText: true,
   decoration: const InputDecoration(
     border: OutlineInputBorder(
       
     ),
     hintText: 'Re-enter the Password',
      fillColor: Colors.grey,
        filled: true,
     
      
   ),
  ),
  )
],
      ),
      SizedBox(height: 1.0,),
      Row(
        children: [
          ElevatedButton(
  onPressed: () {
     {
     
    }
  },
  child: 
  Text(
    'Submit',
    ),
),
        ],
      )
       ] // coloumn children
    ),
    ),
    )
    );
  }
}
