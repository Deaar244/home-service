import 'package:flutter/material.dart';
import '/main.dart';
import '/pages/halaman_empat.dart';
import 'package:table_calendar/table_calendar.dart';

// class HalamanTiga extends StatefulWidget {
//   HalamanTiga({Key? key, required this.kirim}) : super(key: key);
//   String kirim;

//   @override
//   State<HalamanTiga> createState() => _HalamanTigaState();
// }

// class _HalamanTigaState extends State<HalamanTiga> {
//   CalendarFormat format = CalendarFormat.month;
//   DateTime selectedDay = DateTime.now();
//   DateTime focusedDay = DateTime.now();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("MetClean"),
//           backgroundColor: Colors.purple[300],
//           actions: <Widget>[
//             IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
//           ],
//         ),
//         body: Center(
//           child: TableCalendar(
//             firstDay: DateTime(2010),
//             lastDay: DateTime(2040),
//             focusedDay: selectedDay,
//             calendarFormat: format,
//             onFormatChanged: (CalendarFormat _format) {
//               setState(() {
//                 format = _format;
//               });
//             },
//             startingDayOfWeek: StartingDayOfWeek.sunday,
//             daysOfWeekVisible: true,

//             //kodingan perubahan hari
//             onDaySelected: (DateTime selectDay, DateTime focusDay) {
//               setState(() {
//                 selectedDay = selectDay;
//                 focusedDay = focusDay;
//               });
//               print(focusedDay);
//             },
//             selectedDayPredicate: (DateTime date) {
//               return isSameDay(selectedDay, date);
//             },

//             //kodingan kostum kalender
//             calendarStyle: CalendarStyle(
//               isTodayHighlighted: true,
//               selectedDecoration: BoxDecoration(
//                 color: Colors.deepPurple,
//                 shape: BoxShape.circle,
//               ),
//               selectedTextStyle: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold),
//               todayDecoration: BoxDecoration(
//                 color: Colors.purple.shade300,
//                 shape: BoxShape.circle,
//               ),
//             ),
//             headerStyle: HeaderStyle(
//               formatButtonVisible: false,
//               titleCentered: true,
//             ),
//           ),
//           //     child: Column(children: <Widget>[
//           //   Container(
//           //     child: Text("Apakah hidung anda tersumbat (y/t)?"),
//           //   ),
//           //   Container(
//           //       child: TextField(
//           //     controller: nilaisurvei3,
//           //     style: TextStyle(fontSize: 24, color: Colors.black),
//           //   )),
//           //   Container(
//           //     margin: EdgeInsets.all(20),
//           //     child: ElevatedButton(
//           //         child: const Text('Ke Halaman Empat'),
//           //         onPressed: () {
//           //           if (nilaisurvei3.text == "y") {
//           //             nilai = int.parse(kirim) + 20;
//           //           } else {
//           //             nilai = int.parse(kirim);
//           //           }
//           //           Navigator.of(context).push(MaterialPageRoute(
//           //               builder: (context) =>
//           //                   HalamanEmpat(kirim: nilai.toString())));
//           //         }),
//           //   ),
//           // ]
//         ));
//   }
// }

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
          Container(
            child: Text("Apakah anda sakit batuk atau pilek?"),
          ),
          Container(
              child: TextField(
            controller: nilaisurvei2,
            style: TextStyle(fontSize: 24, color: Colors.white),
          )),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
                child: const Text('Ke Halaman Empat'),
                onPressed: () {
                  if (nilaisurvei2.text == "y") {
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
