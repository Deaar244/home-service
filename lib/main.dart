import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController catatan = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController telepon = TextEditingController();
  TextEditingController alamat = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Detail Kontak & Lokasi'),
            backgroundColor: Colors.purple[300],
          ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                  controller: catatan,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Catatan',
                  ),
                  onChanged: (text) {}),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                  controller: nama,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nama',
                  ),
                  onChanged: (text) {  }),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  onChanged: (text) {  }),
            ),

            // Container(
            //   margin: EdgeInsets.all(20),
            //   child: RaisedButton(
            //     onPressed: () {
            //       String nisn = isiController.text;
            //       String nama = isiController2.text;
            //       String alamat = isiController3.text;
            //       telepon.text = nisn;
            //       alamat.text = nama;
            //       isiController6.text = alamat;
            //     },
            //     child: Text("Test"),
            //   ),
            // ),
            
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                  controller: telepon,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nomor Telepon',
                  ),
                  onChanged: (text) {  }),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                  controller: alamat,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Alamat Lengkap',
                  ),
                  onChanged: (text) {  }),
            ),
          ])
        )
      ),
    );
  }
}