import 'package:flutter/material.dart';

class HalamanHasil extends StatelessWidget {
  String kirim;
  String catatan;
  String nama;
  String email;
  String telepon;
  String alamat;

  HalamanHasil(
      {Key? key,
      required this.kirim,
      required this.catatan,
      required this.nama,
      required this.email,
      required this.telepon,
      required this.alamat})
      : super(key: key);
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
            child: Column(
          children: <Widget>[
            Container(child: Text("")),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  height: 200,
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
                            width: 20,
                            height: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            Column(
              children: [
                Text(
                  'Catatan : $catatan',
                ),
                Text(
                  'Nama : $nama',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Email : $email',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Telepon : $telepon',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Alamat : $alamat',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                // Column(
                //   children: [
                //     child: TextField(
                //     Text(
                //       "dea apriliani r",
                //       style: TextStyle(
                //         color: Colors.black,
                //         fontSize: 18,
                //       ),
                //     ),
                //     )
                // SizedBox(
                //   height: 5,
                //   width: 15,
                // ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15.0)),
              child: Center(
                  child: Text(
                'Pesan Sekarang',
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
            ),
          ],
        )));
  }
}
