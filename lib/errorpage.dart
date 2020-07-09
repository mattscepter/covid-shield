import 'package:covid/parsedata.dart';
import 'package:flutter/material.dart';

class Errorpage extends StatelessWidget{
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
            child: Column(
              children: <Widget>[
                IconButton(icon: Icon(Icons.refresh),color: Colors.white70,iconSize: 50, onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Parsedata()));
                }),
                Center(
                  child: Text('Check Network Connection',style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 22,
                    color: Colors.white70
                  ),),
                )
              ],
            )
            ),
          ),
        ) ,
      );
  }

}


