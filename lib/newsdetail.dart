import 'package:flutter/material.dart';

class Newsdetail extends StatelessWidget{
  final String headline;
  final String link;
  final String summary;
  Newsdetail(this.headline,this.link,this.summary);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Covid India News',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/images/back.jpg'),
              fit: BoxFit.cover
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 100, 10, 20),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white.withOpacity(.6),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 20, 20),
                    child: new Text(headline+' : ',style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 20, 25, 40),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: new Image.network(link,fit: BoxFit.fill,)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 5, 20, 100),
                    child: new Text(summary,style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                      //letterSpacing: 0.3,
                      wordSpacing: 1,
                      height: 1.3
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}