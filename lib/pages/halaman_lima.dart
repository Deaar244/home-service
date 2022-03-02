import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HalamanHasil extends StatelessWidget {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  String kirim;
  String ttl;
  String catatan;
  String nama;
  String email;
  String telepon;
  String alamat;

  HalamanHasil(
      {Key? key,
      required this.kirim,
      required this.catatan,
      required this.ttl,
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
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  width: 500,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(0, 4),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Column(
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
                          ),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Text(
                                  'Email : $email',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Text(
                                  'Alamat : $alamat',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Text(
                                  'Catatan : $catatan',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )),
            // Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            //     child: Container(
            //       padding: EdgeInsets.all(20.0),
            //       width: 500,
            //       height: 65,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(20.0),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.grey.shade200,
            //             offset: Offset(0, 4),
            //             blurRadius: 10.0,
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         children: [
            //           Row(
            //             children: [
            //               ClipRRect(
            //                 borderRadius: BorderRadius.circular(15.0),
            //                 child: Text(
            //                   'Telepon : $telepon',
            //                   style: TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 18,
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           )
            //         ],
            //       ),
            //     )),

            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  width: 500,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
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
                              ('Tanggal : ' + focusedDay.toString()),
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Text(
                              'Total : ' + ttl.toString(),
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            Container(
              margin: EdgeInsets.all(20),
              height: 35,
              width: 1300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple[300],
                    onPrimary: Colors.white,
                  ),
                  child: const Text('Pesan sekarang'),
                  onPressed: () {}),
            ),
        //     Container(
        //       margin: EdgeInsets.all(20),
        //       child: Row(
        //         children: [
        //           Container(
        //             margin: EdgeInsets.only(top: 30),
        //             // child: Text('Tanggal : ' + focusedDay.toString()),
        //             child: Text(
        //               'Tanggal : ' + focusedDay.toString(),
        //               textAlign: TextAlign.center,
        //               style: TextStyle(
        //                 fontStyle: FontStyle.normal,
        //                 fontSize: 17,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.black,
        //               ),
        //             ),
        //           ),
        //           Container(
        //             // child: Text('Total : ' + widget.data.ttl),
        //             margin: EdgeInsets.only(top: 30),
        //             child: Text(
        //               ' | Total : ' + ttl.toString(),
        //               textAlign: TextAlign.center,
        //               style: TextStyle(
        //                 fontStyle: FontStyle.normal,
        //                 fontSize: 17,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.black,
        //               ),
        //             ),
        //           ),
        //   ],
        // ))
        ]
        )
        ),
    );
  }
}
