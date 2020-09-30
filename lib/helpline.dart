import 'package:covid/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';

class Helpno extends StatelessWidget {

  final List<Helpline> data;
  Helpno(this.data);

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
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                itemBuilder: (context, position) {
                  return GestureDetector(
                    onLongPress: ()async => await _shareText('State- ${data[position].state}\nHelpline No.- ${data[position].helpno}'),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: (position%2==0)?Colors.blue[600]:Colors.blue[400],
                      child: ListTile(
                        onTap: () async{
                          var url = "tel:${data[position].helpno}";
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        contentPadding: EdgeInsets.all(13),
                        title: Text('${data[position].state}',
                          style: TextStyle(
                              fontSize: 25,
                              height: 1,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Contact Detail -',style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                                color: Colors.white
                            ),),
                            SelectableText('${data[position].helpno}',style: TextStyle(
                                fontSize: 18.5,
                                color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                      elevation: 0,
                    ),
                  );
                }),
          ),
        )
    );
  }
}
