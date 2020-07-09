import 'package:covid/errorpage.dart';
import 'package:covid/homepage.dart';
import 'package:covid/service.dart';
import 'package:covid/splashpage.dart';
import 'package:flutter/material.dart';

class Parsedata extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xFFFF9E80),
        body:FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if(snapshot.hasData){
                return MyHomePage(snapshot.data);
              }
              else if(snapshot.hasError){
                return Errorpage();
              }
              else{
                return Splashpage();
              }
            })
    );
  }

}