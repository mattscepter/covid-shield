import 'package:covid/precaution.dart';
import 'package:covid/symptoms.dart';
import 'package:flutter/material.dart';

class aCtion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Covid Shield',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400  ),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/images/back.jpg'),
              fit: BoxFit.cover
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
            child: Column(
              children: <Widget>[
                Image.asset('asset/images/logo2.png',scale: 1.5,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => Precaution()));
                        },
                        leading: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('asset/images/precaution.png',color: Colors.grey[600]),
                        ),
                        title: Text('Precautions',style: TextStyle(
                          fontSize: 25,fontWeight: FontWeight.w300
                        ),),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => Symptoms()));
                        },
                        leading: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('asset/images/cough.png',color: Colors.grey[600]),
                        ),
                        title: Text('Symptoms',style: TextStyle(
                            fontSize: 25,fontWeight: FontWeight.w300
                        ),),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}