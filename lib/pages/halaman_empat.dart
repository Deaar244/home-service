import 'package:flutter/material.dart';
import '/main.dart';
import '/pages/halaman_lima.dart';

class HalamanEmpat extends StatelessWidget {
  String kirim;
  HalamanEmpat({Key? key, required this.kirim}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detail Kontak & Lokasi"),
          backgroundColor: Colors.purple[300],
          elevation: 6.0,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HalamanHasil(
                    kirim: nilai.toString(),
                    catatan: catatan.text,
                    nama: nama.text,
                    email: email.text,
                    telepon: telepon.text,
                    alamat: alamat.text)));
          },
          backgroundColor: Colors.purple[300],
          child: const Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
        ),
        body: Center(
            child: Column(children: <Widget>[
          // Card(
          // color: Colors.white70,
          //   child: Container(
          //     padding: EdgeInsets.all(10.0),
          //     child: Column(
          //       children: <Widget>[
          //         Row(
          //           children: <Widget>[
          //             Expanded(child: new Text("Catatan", style: TextStyle(color: Colors.black12),)),
          //             TextField(
          //               controller: catatan,
          //               decoration: InputDecoration(
          //               border: OutlineInputBorder(),
          //               labelText: 'Catatan',
          //             ),
          //           onChanged: (text) {}),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          // ),

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
                onChanged: (text) {}),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
                onChanged: (text) {}),
          ),

          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
                controller: telepon,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nomor Telepon',
                ),
                onChanged: (text) {}),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
                controller: alamat,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Alamat Lengkap',
                ),
                onChanged: (text) {}),
          ),
        ])));
  }
}
