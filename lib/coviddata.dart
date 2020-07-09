import 'package:covid/data.dart';
import 'package:flutter/material.dart';
import 'details.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';

class covidup extends StatelessWidget{

  List<Data> data;
  covidup(this.data);


  void _onTapItem(BuildContext context, Data data) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DataDetails(data)));
  }

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
            padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
            child: ListView.builder(
                itemCount: data.length,
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                itemBuilder: (context, position) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: GestureDetector(
                      onLongPress: ()async => await _shareText('State- ${data[position].state}\nConfirmed Cases- ${data[position].confirmed}\nConfirmed Deaths- ${data[position].deaths}\nRecovered- ${data[position].recovered}'),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: (position%2==0)?Colors.blue[600]:Colors.blue[400],
                        child: ListTile(
                          onTap: (){
                            if(data[position].state=="State Unassigned"){
                                  final snackBar = SnackBar(
                                    backgroundColor: Colors.black.withOpacity(0.6),
                                    content: Text('Cases whose state is not confirmed',style: TextStyle(
                                      fontWeight: FontWeight.w300
                                    ),),
                                  );
                                  Scaffold.of(context).showSnackBar(snackBar);
                            }
                            else {
                              _onTapItem(context, data[position]);
                            }
                          },
                          contentPadding: EdgeInsets.all(13),
                          title: Text(
                            '${data[position].state}',
                            style: TextStyle(
                                fontSize: 25,
                                height: 1,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          subtitle: Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Confirmed Case- ${data[position].confirmed}',style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.w300),),
                                  Text('Recovered- ${data[position].recovered}',style: TextStyle(fontSize: 16,color:Colors.lightGreen[300],fontWeight: FontWeight.w300),),
                                  Text('Deaths- ${data[position].deaths}',style: TextStyle(fontSize: 16,color:Colors.red[600],fontWeight: FontWeight.w300),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        elevation: 0,
                      ),
                    ),
                  );
                }),
          ),
        )
    );
    }
  }