import 'package:flutter/material.dart';
class Symptoms extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Symptoms',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400  ),),
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
          padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
          child: ListView(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 20),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 10, 15),
                child: Container(
                  child: Text('Most people who fall sick with COVID-19 will experience mild to moderate symptoms or even may not show any symptoms and recover without special treatment. But if you encounter the following symptoms then conatact your doctor and isolate yourself.',style: TextStyle(
                      fontSize: 22,color: Colors.white,fontWeight: FontWeight.w300
                  ),),
                ),
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset('asset/images/symptoms/fever.jpeg',fit: BoxFit.cover,scale: 3,)
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160,
                          child: Text('Fever',style: TextStyle(
                              fontSize: 25,fontWeight: FontWeight.w300
                          ),),
                        ),
                      ],
                    ),
                  )
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset('asset/images/symptoms/cough.jpeg',fit: BoxFit.cover,scale: 3.5,)
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160,
                          child: Text('Dry Cough',style: TextStyle(
                              fontSize: 25,fontWeight: FontWeight.w300
                          ),),
                        ),
                      ],
                    ),
                  )
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset('asset/images/symptoms/fatigue.jpeg',fit: BoxFit.cover,scale: 3.5,)
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160,
                          child: Text('Fatigue with/or muscle pain',style: TextStyle(
                              fontSize: 25,fontWeight: FontWeight.w300
                          ),),
                        ),
                      ],
                    ),
                  )
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset('asset/images/symptoms/sore.jpeg',fit: BoxFit.cover,scale: 3.5,)
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160,
                          child: Text('Sore throat',style: TextStyle(
                              fontSize: 25,fontWeight: FontWeight.w300
                          ),),
                        ),
                      ],
                    ),
                  )
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset('asset/images/symptoms/breath.jpeg',fit: BoxFit.cover,scale: 3,)
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160,
                          child: Text('Shortness of breath',style: TextStyle(
                              fontSize: 25,fontWeight: FontWeight.w300
                          ),),
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

}