import 'package:flutter/material.dart';

class Credit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          backgroundColor: Colors.pinkAccent[100],
          appBar: AppBar(
            title: Text("Informasi"),
            centerTitle: true,
            bottom: PreferredSize(
                child: Container(
                  color:Colors.orange,
                  height: 4.0,
                ),
                preferredSize: null
            ),
            backgroundColor: Colors.blueGrey,
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
              margin: EdgeInsets.only(top:10, bottom:5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(fit: BoxFit.fill, image: AssetImage('arik.JPG'),),
              ),
            ),
            Text('Sumber:', style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w500),),
            Text('Dokumentasi Pribadi', style: TextStyle(color: Colors.black, fontSize: 15.0),),
            Container(
              child: Text('Sumber Gambar Dari Internet :', style: TextStyle(color: Colors.black, fontSize: 18.0,fontWeight: FontWeight.w500),),
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 37, right: 37, top: 5, bottom: 5),
              color: Colors.blueGrey[500],
            ),
            
            Container(
              margin: EdgeInsets.only(top:15),
              padding: EdgeInsets.only(left:50, right:50, top:5, bottom:5),
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  )
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100, width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage( image: AssetImage("images/tunai.jpg"),),
                    ),
                  ),
                  Text('Sumber :', style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w500),),
                  Text('www.pajak.com', style: TextStyle(color: Colors.blue, fontSize: 15.0),),
                ],
              )
            )
          ]
        )
    );
  }
}