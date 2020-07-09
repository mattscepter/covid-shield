import 'package:covid/about.dart';
import 'package:covid/coviddata.dart';
import 'package:covid/covidinfo.dart';
import 'package:covid/feed_back.dart';
import 'package:covid/helpline.dart';
import 'package:covid/newsdata.dart';
import 'package:covid/precaution.dart';
import 'package:covid/source.dart';
import 'package:covid/symptoms.dart';
import 'package:covid/worldwide.dart';
import 'package:flutter/material.dart';
import 'package:covid/action.dart';

class MyHomePage extends StatefulWidget{
  final List data;
  MyHomePage(this.data);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  int _selectedIndex=0;


  @override
  Widget build(BuildContext context) {
    final List<Widget>_list=[
      worldData(widget.data[0],widget.data[3],widget.data[4]),
      covidup(widget.data[0]),
      Newsdata(widget.data[1]),
      Helpno(widget.data[2]),
    ];

    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('asset/images/drawer.jpeg'),fit: BoxFit.cover,
                )
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => covidInfo()));
              },
              title: Text("Covid Info",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.info_outline)
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Precaution()));
              },
              trailing: Image.asset('asset/images/precaution.png',color: Colors.grey[600],scale: 2.5),
              title: Text("Covid Precautions",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Symptoms()));
              },
              title: Text("Covid Symptoms",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
              trailing: Image.asset('asset/images/cough.png',color: Colors.grey[600],scale: 18,),
            ),
            Divider(thickness: 1,),
            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Source()));
              },
              title: Text("Sources",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.library_books),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => About()));
              },
              title: Text("About",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.info),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Feed_back()));
              },
              title: Text("Help and Feedback",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.feedback),
            ),
            Divider(thickness: 1.0,),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.copyright,size: 17,),
                        Text(' mattscepterdev.inc',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                      ],
                    ),
                    Text(' v 0.0.1',style: TextStyle(fontWeight: FontWeight.w300),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Covid Shield',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400  ),),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[900],
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: FlatButton(
                onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => aCtion()));
            },
                child: Image.asset('asset/images/logo2.png',scale: 4.5,)),
          )
        ],
      ),
      body:_list[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),title:Text('Home',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400))),
          BottomNavigationBarItem(icon: Icon(Icons.dehaze),title:Text('India Data',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400))),
          BottomNavigationBarItem(icon: Icon(Icons.list),title:Text('News',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400))),
          BottomNavigationBarItem(icon: Icon(Icons.phone),title:Text('Helpline',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400))),
        ],

        fixedColor: Colors.white,
        currentIndex:_selectedIndex,
        onTap: ItemTapped,
        unselectedItemColor:Colors.blue[100] ,
        elevation: 10,
        backgroundColor: Colors.blueAccent,

      ),

    );
  }
  void ItemTapped(int index) {
    setState(() {
      _selectedIndex=index;
    });
  }



}



