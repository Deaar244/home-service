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
          title: const Text("MetClean"),
          backgroundColor: Colors.purple[300],
          actions: <Widget>[
            IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
          ],
        ),
        body: Center(
            child: Column(children: <Widget>[
          Container(
            child: Text("Apakah anda demam (y/t)?"),
          ),
          Container(
              child: TextField(
            controller: nilaisurvei4,
            style: TextStyle(fontSize: 24, color: Colors.black),
          )),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
                child: const Text('Ke Halaman Lima'),
                onPressed: () {
                  if (nilaisurvei4.text == "y") {
                    nilai = int.parse(kirim) + 20;
                  } else {
                    nilai = int.parse(kirim);
                  }
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          HalamanHasil(kirim: nilai.toString())));
                }),
          ),
        ])));
  }
}
