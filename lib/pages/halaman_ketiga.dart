import 'package:flutter/material.dart';
import '/main.dart';
import '/pages/halaman_empat.dart';

class HalamanTiga extends StatelessWidget {
  String kirim;
  HalamanTiga({Key? key, required this.kirim}) : super(key: key);
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
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50),
              child: Container(
                padding: EdgeInsets.all(20.0),
                width: 500,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(0, 4),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Text("Hasilnya adalah anda memiliki \n " +
                                kirim +
                                " %" +
                                "gejala Omicron berdasarkan info yang ada")),
                        SizedBox(
                          width: 15,
                          height: 10,
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Container(
              child: TextField(
            controller: nilaisurvei3,
            style: TextStyle(fontSize: 24, color: Colors.black),
          )),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
                child: const Text('Ke Halaman Empat'),
                onPressed: () {
                  if (nilaisurvei3.text == "y") {
                    nilai = int.parse(kirim) + 20;
                  } else {
                    nilai = int.parse(kirim);
                  }
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          HalamanEmpat(kirim: nilai.toString())));
                }),
          ),
        ])));
  }
}
