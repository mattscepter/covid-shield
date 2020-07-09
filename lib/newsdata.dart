import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'newsdetail.dart';

class Newsdata extends StatelessWidget{

  final List news;
  Newsdata(this.news);

  void _onTapItem(BuildContext context, String headline,String link,String summary) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => Newsdetail(headline,link,summary)));
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
            padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
            child: ListView.builder(
                itemCount: news[0].length,
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 20),
                itemBuilder: (context, position) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: (position%2==0)?Colors.blue[600]:Colors.blue[400],
                    child: ListTile(
                        onTap: ()=> _onTapItem(context,news[0][position],news[2][position],news[1][position]),
                        title:Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 10, 15),
                            child: Container(
                              height: 90,
                              width: 120,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  semanticContainer: true,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Image.network(news[2][position],fit: BoxFit.fill,)
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                              child: Center(
                                child: Text(news[0][position],style: TextStyle(
                                    fontSize: 20,fontWeight: FontWeight.w300
                                ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 0,
                  );
                }),
          ),
        )
      );
    }
  }

/*
contentPadding: EdgeInsets.fromLTRB(10, 15, 10, 15),
title: Text(
'${news[0][position]}',
style: TextStyle(
fontSize: 20,
height: 1,
color: Colors.black,
fontWeight: FontWeight.w300),
),
leading: Container(
width: 100,
height: 150,
child: Card(
child: Image.network(news[2][position])
)
)*/
