import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Feed_back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Help&Feedback',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400  ),),
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
          padding: const EdgeInsets.fromLTRB(10, 110, 10, 30),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            color: Colors.white.withOpacity(.6),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Image.asset('asset/images/logo2.png',scale: 1.9,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 50, 20, 0),
                    child: Text('For help and feedback contact us through the following sources:',style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w300,
                      color: Colors.black
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: GestureDetector(
                      onTap: ()async{
                        var url = 'mailto:chaudharyut25@gmail.com?subject=Help&Feedback';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Column(
                          children: <Widget>[
                            Text('Email us at -',style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                            ),),
                            Center(
                              child: Text('chaudharyut25@gmail.com',style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black
                              ),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 20, 60, 0),
                    child: Text('For reporting any bug or any suggestions head over to github:',style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w300,
                      color: Colors.black
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 20, 60, 0),
                    child: Text('GitHub -',style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                    ),),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
