import 'package:flutter/material.dart';
import 'medsos.dart';

class MyProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          backgroundColor: Colors.pinkAccent[100],
          appBar: AppBar(
            title: Text("Profil Admin"),
            centerTitle: true,
            bottom: PreferredSize(
                child: Container(
                  color:Colors.orange,
                  height: 4.0,
                ),
                preferredSize: null
            ),
          ),
          body: Konten()
      );
  }
}

class Konten extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:Column(
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(top:40, bottom:20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(fit: BoxFit.fill, image: AssetImage('images/arik.JPG'),),
              ),
            ),
            Text('I Putu Ari Sanjaya', style: TextStyle(color: Colors.black, fontSize: 24.0),),
            Text('ari.sanjaya.2@undiksha.ac.id', style: TextStyle(color: Colors.blue, fontSize: 14.0),),
            
            Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top:30, left:60),
                      padding: EdgeInsets.only(left:23, right:23, top:10, bottom:10),
                      decoration: BoxDecoration(
                          color: Colors.cyan[100],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.blueGrey,
                            width: 2,
                          )
                      ),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.my_location, size: 50, color: Colors.green,),
                          Container(
                            child: Text('Badung', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                            margin: EdgeInsets.only(top:4),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          )
                        ],
                      )
                  ),

                  Container(
                      margin: EdgeInsets.only(top:30, left:36),
                      padding: EdgeInsets.only(left:26, right:26, top:6, bottom:10),
                      decoration: BoxDecoration(
                          color: Colors.cyan[100],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.blueGrey,
                            width: 2,
                          )
                      ),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.home, size: 60, color: Colors.purple,),
                          Container(
                            child: Text('Sobangan', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          )
                        ],
                      )
                  ),
                ]
            ),

            Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top:60, left:60),
                      padding: EdgeInsets.only(left:21, right:21, top:10, bottom:10),
                      decoration: BoxDecoration(
                          color: Colors.cyan[100],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.blueGrey,
                            width: 2,
                          )
                      ),
                      child: Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.photo_album, color: Colors.yellow, size: 30),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Medsos()),
                              );
                            },
                          ),
                          Container(
                            child: Text('Instagram', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          )
                        ],
                      )
                  ),

                  Container(
                      margin: EdgeInsets.only(top:60, left:30),
                      padding: EdgeInsets.only(left:23, right:23, top:10, bottom:10),
                      decoration: BoxDecoration(
                          color: Colors.cyan[100],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.blueGrey,
                            width: 2,
                          )
                      ),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.school, size: 50, color: Colors.brown),
                          Container(
                            child: Text('Undiksha18', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          )
                        ],
                      )
                  ),
                ]
            ),
          ],
        )
    );
  }
}



