import 'package:covid/data.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/material.dart';

class Worlddetails extends StatelessWidget{
  final world data;
  Worlddetails(this.data);

  Future<void> _shareText(String msg) async {
    try {
      Share.text('Covid data',msg,'text/plain');
    } catch (e) {
      print('error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Worldwide Data',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[900],
          actions: <Widget>[
            IconButton(icon: Icon(Icons.share),color: Colors.white, onPressed: ()async => await _shareText('Worldwide cases\nConfirmed Cases- ${data.confirmedCases}\nConfirmed Deaths- ${data.recoveredCases}\nRecovered- ${data.deathCases}\nDeath Rate- ${data.recoveredRate}\nRecovery Rate- ${data.deathRate}'))
          ],
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
            padding: const EdgeInsets.fromLTRB(10, 130, 10, 130),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 0,
              color: Colors.white.withOpacity(.6),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(
                    children: <Widget>[
                      Center(child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,70,0,40),
                        child: new Text('Worldwide Data',style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),),
                      )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Center(
                          child: new Text('Confirmed Cases- '+data.confirmedCases,style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w300
                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Center(
                          child: new Text('Confirmed Deaths- '+data.recoveredCases,style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w300
                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Center(
                          child: new Text('Recovered Cases- '+data.deathCases,style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w300
                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Center(
                          child: new Text('Active Cases- ${data.activeCases}',style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w300
                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Center(
                          child: new Text('Death Rate- ${data.recoveredRate}',style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w300
                          ),),
                        ),
                      ),
                      Center(
                        child: new Text('Recovery Rate- ${data.deathRate}',style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }

}