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
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  width: 500,
                  height: 65,
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
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Text(
                              'Nama : $nama',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Email : $email',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
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
              margin: EdgeInsets.all(15),
              height: 35,
              width: 1300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  child: const Text('Pesan sekarang'),
                  onPressed: () {}),
            )
          ],
        )));
  }
}
