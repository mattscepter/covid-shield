import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Source extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Sources',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400  ),),
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
          padding: const EdgeInsets.fromLTRB(10, 130, 10, 50),
          child: Card(
            color: Colors.white.withOpacity(.6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
              child: Column(
                children: <Widget>[
                  Image.asset('asset/images/logo2.png',scale: 1.9,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(28, 20, 30, 20),
                    child: Text('The information on the app is gathered from the most trustworthy sources which include(click to go to respective pages):',style: TextStyle(
                        fontSize: 22.5,
                        fontWeight: FontWeight.w300,
                        color: Colors.black
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()async{
                        var url = 'https://www.mygov.in/covid-19/';
                        if (await canLaunch(url)) {
                        await launch(url);
                        } else {
                        throw 'Could not launch $url';
                        }
                      },
                      child: Text('- Mygov.in',style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black
                      ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()async{
                        var url = 'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/events-as-they-happen';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Text('- www.who.int',style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black
                      ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()async{
                        var url = 'https://en.wikipedia.org/wiki/Coronavirus_disease_2019';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Text('- en.wikipedia.org',style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black
                      ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()async{
                        var url = 'https://inshorts.com/en/read';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Text('- inshorts.com',style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black
                      ),),
                    ),
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