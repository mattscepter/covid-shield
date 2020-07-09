import 'package:flutter/material.dart';
class Precaution extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Precautions',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400  ),),
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
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      title: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset('asset/images/precautions/washhand-01.jpeg',fit: BoxFit.cover,scale: 3,)
                            ),
                          ),
                          Expanded(
                            child: Text('Clean your hands often with soap and water and/or hand sanatizer',style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w300
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
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset('asset/images/precautions/cough-01.jpeg',fit: BoxFit.cover,scale: 3.5,)
                            ),
                          ),
                          SizedBox(
                            width: 160,
                            child: Text('Avoid touching your eyes, nose and mouth with unwashed hands',style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w300
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
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset('asset/images/precautions/distancing-01.jpeg',fit: BoxFit.cover,scale: 3.5,)
                            ),
                          ),
                          SizedBox(
                            width: 160,
                            child: Text('Avoid close contact, putting distancing between yourself and other people',style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w300
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
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset('asset/images/precautions/stay-02.jpeg',fit: BoxFit.cover,scale: 3.5,)
                            ),
                          ),
                          SizedBox(
                            width: 160,
                            child: Text('Stay home until its very necessary to go out',style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w300
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
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset('asset/images/precautions/cover-01.jpeg',fit: BoxFit.cover,scale: 3,)
                            ),
                          ),
                          SizedBox(
                            width: 160,
                            child: Text('Cover your face while coughing or sneezing',style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w300
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
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset('asset/images/precautions/mask-01.jpeg',fit: BoxFit.cover,scale: 3,)
                            ),
                          ),
                          SizedBox(
                            width: 160,
                            child: Text('Wear a mask whenever leaving the house',style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w300
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
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset('asset/images/precautions/disinfect-01.jpeg',fit: BoxFit.cover,scale: 3,)
                            ),
                          ),
                          SizedBox(
                            width: 160,
                            child: Text('Clean and disinfect frequently touched surfaces',style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w300
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