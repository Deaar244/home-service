import 'package:flutter/material.dart';
import '/main.dart';
import '/pages/halaman_ketiga.dart';

class HalamanDua extends StatefulWidget {
  String kirim;
  HalamanDua({Key? key, required this.kirim}) : super(key: key);
  @override
  _HalamanDuaState createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              "MetClean",
            ),
            backgroundColor: Colors.purple[300],
            actions: <Widget>[
              IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
            ],
          ),
          body: Center(
              child: Column(children: <Widget>[
            new Text(
              "Ruangan mana yang akan kami bersihkan?",
              style: new TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            new Image.network(
                'https://img.icons8.com/officel/2x/living-room.png',
                width: 30,
                height: 30,
                fit: BoxFit.cover),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: TextField(
                  controller: rtengah,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText:
                        'Masukan jumlah Ruang utama yang akan dibersihkan ',
                  ),
                  onChanged: (text) {}),
            ),
            new Image.network('https://img.icons8.com/fluency/2x/bedroom.png',
                width: 30, height: 30, fit: BoxFit.cover),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: TextField(
                  controller: kamar,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText:
                        'Masukan jumlah kamar tidur yang akan dibersihkan',
                  ),
                  onChanged: (text) {}),
            ),
            new Image.network('https://img.icons8.com/color/2x/bath.png',
                width: 30, height: 30, fit: BoxFit.cover),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: TextField(
                  controller: wc,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText:
                        'Masukan jumlah kamar mandi yang akan dibersihkan',
                  ),
                  onChanged: (text) {}),
            ),
            new Image.network('https://img.icons8.com/dusk/2x/kitchen.png',
                width: 30, height: 30, fit: BoxFit.cover),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: TextField(
                  controller: dapur,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Masukan jumlah dapur yang akan dibersihkan',
                  ),
                  onChanged: (text) {}),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 35,
              width: 1000,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple[300],
                    onPrimary: Colors.white,
                  ),
                  child: const Text('Total'),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            HalamanTiga(kirim: harga.toString())));
                  }),
            ),
          ]))),
    );
  }
}

//test doang

class HalamanHasil extends StatelessWidget {
  String kirim;
  HalamanHasil({Key? key, required this.kirim}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Total Harga"),
        ),
        body: Center(
            child: Column(children: <Widget>[
          Container(
            child: Text("Total pembayaran anda" + kirim + ".00 Rp"),
          ),
        ])));
  }
}
