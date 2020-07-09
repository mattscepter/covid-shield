import 'package:covid/details.dart';
import 'package:covid/worldwidedetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'data.dart';


class worldData extends StatelessWidget{
  final world data;
  final List<Data> data2;
  final List<dynamic> news;
  worldData(this.data2,this.data,this.news);

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
        body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('asset/images/back.jpg'),
        fit: BoxFit.cover
        ),
        ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: ListView(
              children: <Widget>[
                GestureDetector(
                  onLongPress: ()async => await _shareText('Worldwide Cases\nConfirmed Cases- ${data.confirmedCases}\nConfirmed Deaths- ${data.recoveredCases}\nRecovered- ${data.deathCases}\nDeath Rate- ${data.recoveredRate}\nRecovery Rate- ${data.deathRate}'),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Worlddetails(data)));
                    print('Tapped');
                  },
                  child: new Container(
                    constraints: BoxConstraints.expand(height: 125),
                    color: Colors.blue[700],
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Column(
                        children: <Widget>[
                          Text('Worldwide Cases',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Colors.black)),
                          // Text(' ',style: TextStyle(fontSize: 8),),
                          Text('Cases- ${data.confirmedCases}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.white),),
                          Text('Recovered - ${data.deathCases}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.lightGreen),),
                          Text('Deaths- ${data.recoveredCases}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.red[800]),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 29),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => DataDetails(data2[0])));
                      print('Tapped');
                    },
                    child: new Container(
                      constraints: BoxConstraints.expand(height: 125),
                      color: Colors.blue[400],
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Column(
                          children: <Widget>[
                            Text('Total Cases In India',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Colors.black),),
                            // Text(' ',style: TextStyle(fontSize: 8),),
                            Text('Cases- ${data2[0].confirmed}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.white),),
                            Text('Recovered- ${data2[0].recovered}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.lightGreen[300]),),
                            Text('Deaths- ${data2[0].deaths}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.red[800]),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Center(child: Text('Worldwide Updates :',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w300,color: Colors.white),)),
                  ListView.builder(
                    shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: news.length,
                      padding:EdgeInsets.fromLTRB(0, 10, 0, 0),
                      itemBuilder: (context, position)
                      {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 0,
                        color: (position % 2 == 0) ? Colors.blue[600] : Colors
                            .blue[400],
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: Text(news[position], style: TextStyle(
                                fontSize: 22,
                                height: 1,
                                color: Colors.black,
                                fontWeight: FontWeight.w300)),
                          ),
                        ),
                      ),
                    );
                  }
                    )
              ],
            ),
          ),
        )
    );
  }

}
