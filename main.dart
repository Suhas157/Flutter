import 'package:flutter/material.dart';

void main() {
  runApp(
    // create material app
      MaterialApp(
        //create home widget
        home:Scaffold(
          backgroundColor: Colors.blueGrey[100],
          // appBar is a property here and AppBar is widget here
          body: Center(
            child: Image(

              image: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg'),

            ),
          ),
          appBar:AppBar(
            title:Text('I am Rich'),
            backgroundColor: Colors.blueGrey[900],
          ),

        )
      )

  );
}

