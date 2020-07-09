import 'package:flutter/material.dart';

class Splashpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/images/splash.jpeg'),
                fit: BoxFit.cover
            ),
        ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 530, 0, 0),
              child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue[200]),
                backgroundColor: Colors.blue[600],
              ),
            ),
          ) ,
        ),
      );
  }

}


