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
  TextEditingController rtengah = TextEditingController();
  TextEditingController kamar = TextEditingController();
  TextEditingController wc = TextEditingController();
  TextEditingController dapur = TextEditingController();
  int harga = 0;
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Ruangan mana yang akan kami bersihkan?'),
            backgroundColor: Colors.purple[300],
            actions: <Widget>[
              IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
            ],
          ),
          body: Center(
              child: Column(children: <Widget>[
            new Image.network(
                'https://img.icons8.com/officel/2x/living-room.png',
                width: 30,
                height: 30,
                fit: BoxFit.cover),
            new Text ('Ruang Utama'),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 200),
              child: TextField(
                  controller: rtengah,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText:
                        'Jumlah Ruang Utama yang akan dibersihkan',
                  ),
                  onChanged: (text) {}),
            ),
            new Image.network('https://img.icons8.com/fluency/2x/bedroom.png',
                width: 30, height: 30, fit: BoxFit.cover),
            new Text ('Kamar Tidur'),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 200),
              child: TextField(
                  controller: kamar,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText:
                        'Jumlah kamar yang akan dibersihkan',
                  ),
                  onChanged: (text) {}),
            ),
            new Image.network('https://img.icons8.com/color/2x/bath.png',
                width: 30, height: 30, fit: BoxFit.cover),
            new Text ('Kamar Mandi'),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 200),
              child: TextField(
                  controller: wc,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText:
                        'Jumlah Kamar Mandi yang akan dibersihkan',
                  ),
                  onChanged: (text) {}),
            ),
            new Image.network('https://img.icons8.com/dusk/2x/kitchen.png',
                width: 30, height: 30, fit: BoxFit.cover),
            new Text ('Dapur'),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 200),
              child: TextField(
                  controller: dapur,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'jumlah dapur yang akan dibersihkan',
                  ),
                  onChanged: (text) {}),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 35,
              width: 100,
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
