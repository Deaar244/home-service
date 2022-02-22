import 'package:flutter/material.dart';
import '/main.dart';
import '/pages/halaman_ketiga.dart';

String kirim = '';
String kirim2 = '';

class HalamanDua extends StatefulWidget {
  String ttl;

  HalamanDua({required this.ttl});

  // String kirim, kirim2;
  // HalamanDua({Key? key, required this.kirim, required this.kirim2}): super(key: key);

  @override
  _HalamanDuaState createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
<<<<<<< HEAD
=======
  TextEditingController rtengah = TextEditingController();
  TextEditingController kamar = TextEditingController();
  TextEditingController wc = TextEditingController();
  TextEditingController dapur = TextEditingController();
  int harga = 150000;
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  TextEditingController total = TextEditingController();
  // int harga = 150000;
  // String a = "";
  // String b = "";
  // String c = "";
  // String d = "";

>>>>>>> b53e8b84d9cc5f4c3c064903f463b2b411f26c5f
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
            Container(
              width: 500,
              height: 50,
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Ruangan mana yang akan kami bersihkan?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  color: Colors.black,
                ),
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
                    // int harga = '150000';
                    int a = int.parse(rtengah.text);
                    int b = int.parse(kamar.text);
                    int c = int.parse(wc.text);
                    int d = int.parse(dapur.text);
                    int ruang = harga * a;
                    int kmr = harga * b;
                    int kmrmandi = harga * c;
                    int dpr = harga * d;

                    int ttlsemua = ruang + kmr + kmrmandi + dpr;
                    total.text = ttlsemua.toString();

                    final data = HalamanDua(
                      ttl: ttlsemua.toString(),
                    );

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HalamanTiga(data: data)));
                  }),
            ),
          ]))),
    );
  }
}

//test doang

// class HalamanTiga extends StatelessWidget {
//   String kirim, kirim2;
//   HalamanTiga({Key? key, required this.kirim, required this.kirim2})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Total Harga"),
//         ),
//         body: Center(
//             child: Column(children: <Widget>[
//           Container(
//             child: Text("Total pembayaran anda" + kirim + kirim2 + ".00 Rp"),
//           ),
//         ])));
//   }
// }
// class HalamanHasil extends StatelessWidget {
//   String kirim;
//   HalamanHasil({Key? key, required this.kirim}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Total Harga"),
//         ),
//         body: Center(
//             child: Column(children: <Widget>[
//           Container(
//             child: Text("Total pembayaran anda" + kirim + ".00 Rp"),
//           ),
//         ])));
//   }
// }
