import 'package:flutter/material.dart';
import '/main.dart';
import '/pages/halaman_empat.dart';
import 'package:table_calendar/table_calendar.dart';

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
            child: TableCalendar(
          firstDay: DateTime.utc(2010, 10, 20),
          lastDay: DateTime.utc(2040, 10, 20),
          focusedDay: DateTime.now(),
          calendarStyle: CalendarStyle(
              todayTextStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          //     child: Column(children: <Widget>[
          //   Container(
          //     child: Text("Apakah hidung anda tersumbat (y/t)?"),
          //   ),
          //   Container(
          //       child: TextField(
          //     controller: nilaisurvei3,
          //     style: TextStyle(fontSize: 24, color: Colors.black),
          //   )),
          //   Container(
          //     margin: EdgeInsets.all(20),
          //     child: ElevatedButton(
          //         child: const Text('Ke Halaman Empat'),
          //         onPressed: () {
          //           if (nilaisurvei3.text == "y") {
          //             nilai = int.parse(kirim) + 20;
          //           } else {
          //             nilai = int.parse(kirim);
          //           }
          //           Navigator.of(context).push(MaterialPageRoute(
          //               builder: (context) =>
          //                   HalamanEmpat(kirim: nilai.toString())));
          //         }),
          //   ),
          // ]
        )));
  }
}
