import 'package:flutter/material.dart';

class OutputAPK extends StatelessWidget {
  OutputAPK(
    {
      @required this.nama,
      @required this.alamat,
      @required this.pokokpinjaman,
      @required this.bungapinjaman,
      @required this.durasi
    }
  );

  final int pokokpinjaman;
  final int bungapinjaman;
  final int durasi;
  final String nama;
  final String alamat;

  @override
  Widget build(BuildContext context) {
    double jumlahPokok = pokokpinjaman + (pokokpinjaman * bungapinjaman * durasi) / 100;
    double jumlahbunga = (jumlahPokok - pokokpinjaman);
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Akumulasi Pajak'),
        bottom: PreferredSize(
            child: Container(
              color: Colors.orange[500],
              height: 4.0,
            ),
            preferredSize: null),
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 5, left: 100, right: 100),
              color: Colors.pinkAccent[100],
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage('images/tunai.jpg'),
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(4),
              color: Colors.orange[500],
            ),

            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
              decoration: BoxDecoration(
                  color: Colors.cyan[100],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.blueGrey,
                    width: 5,
                  )
                ),

                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Hasil Akumulasi Pajak',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600),
                      ),
                      padding: EdgeInsets.only(left: 70, right: 50, top:5, bottom:5 ),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[500],
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.blueGrey,
                          width: 2,
                        )
                      ),
                    ),
                    
                    Text(
                      "Nama",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    
                    Text(
                      "$nama",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.green[500]),
                    ),

                    Text(
                      "Alamat",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    Text(
                      "$alamat",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.green[500]),
                    ),

                    Text(
                      "Pokok pajak",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    Text(
                      "$pokokpinjaman",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.green[500]),
                    ),

                    Text(
                      "Bunga Pajak",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w800),
                    ),

                    Text(
                      "$bungapinjaman%",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.green[500]),
                    ),

                    Text(
                      "durasi",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w800),
                    ),

                    Text(
                      "$durasi Tahun",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.green[500]),
                    ),

                     Text(
                      "Total Bunga ",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w800),
                    ),

                    Text(
                      "$jumlahbunga",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.green[500]),
                    ),


                    Text(
                      "Total Pajak Beserta Bunga",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w800),
                    ),

                    Text(
                      "$jumlahPokok",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.green[500]),
                    )
                  ],
                )
              ),
              
              Container(
              margin: EdgeInsets.only(left: 60, right: 60,top:20, bottom: 20),
              child: RaisedButton(
                 onPressed: () {
                    Navigator.pop(context);
                  },
                padding: EdgeInsets.only(top: 5, bottom: 5),
                color: Colors.blueGrey,
                child: Text(
                  'Kembali',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
