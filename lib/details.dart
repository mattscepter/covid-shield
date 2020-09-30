import 'package:covid/data.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//flutter app for covid sheild
class DataDetails extends StatelessWidget{
  final Data data;
  DataDetails(this.data);

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
        title: Text('Covid India Update',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[900],
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share,color: Colors.white,), onPressed: ()async => await _shareText('State- ${data.state}\nConfirmed Cases- ${data.confirmed}\nConfirmed Deaths- ${data.deaths}\nRecovered- ${data.recovered}\nDeath Rate- ${((int.parse(data.deaths)/int.parse(data.confirmed))*100).toString().substring(0,4)}%\nRecovery Rate- ${((int.parse(data.recovered)/int.parse(data.confirmed)*100)).toString().substring(0,4)}%'), )
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
          padding: const EdgeInsets.fromLTRB(10, 130, 10, 90),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 0,
            color: Colors.white.withOpacity(.6),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 60, 0, 40),
                      child: Center(
                        child: new Text(data.state,textAlign:TextAlign.center,style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Center(
                        child: new Text('Confirmed Cases - '+data.confirmed,style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Center(
                        child: new Text('Confirmed Deaths - '+data.deaths,style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Center(
                        child: new Text('Recovered Cases - '+data.recovered,style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Center(
                        child: new Text('Death Rate - '+((int.parse(data.deaths)/int.parse(data.confirmed))*100).toString().substring(0,4)+'%',style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 45),
                      child: Center(
                        child: new Text('Recovery Rate - '+((int.parse(data.recovered)/int.parse(data.confirmed)*100)).toString().substring(0,4)+'%',style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                      child: Center(
                        child: new Text('Last Updated',style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w300
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Center(
                        child: new Text('Date - '+data.lastupdatedtime.substring(0,10),style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Center(
                        child: new Text('Time - '+data.lastupdatedtime.substring(10,data.lastupdatedtime.length),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      )
    );
        //child: Text('State-${data.state}\nConfirmed Cases-${data.confirmed}\nConfirmed deaths-${data.deaths}\nRecovered Patients-${data.recovered}\n${data.active}\nLast Time Updated-${data.lastupdatedtime}'
  }

}
