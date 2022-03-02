import 'package:flutter/material.dart';
import 'package:home_cleaning/pages/halaman_kedua.dart';
import '/main.dart';
import '/pages/halaman_empat.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

class HalamanTiga extends StatefulWidget {
  final HalamanDua data;

  HalamanTiga({required this.data});

  // String kirim, kirim2;
  // HalamanTiga({Key? key, required this.kirim, required this.kirim2}) : super(key: key);

  @override
  State<HalamanTiga> createState() => _HalamanTigaState();
}

class _HalamanTigaState extends State<HalamanTiga> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("MetClean"),
        backgroundColor: Colors.purple[300],
        actions: <Widget>[
          IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            TableCalendar(
              firstDay: DateTime(2010),
              lastDay: DateTime(2040),
              focusedDay: selectedDay,
              calendarFormat: format,
              onFormatChanged: (CalendarFormat _format) {
                setState(() {
                  format = _format;
                });
              },
              startingDayOfWeek: StartingDayOfWeek.sunday,
              daysOfWeekVisible: true,

              //kodingan perubahan hari
              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                setState(() {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                });
                print(focusedDay);
              },
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },

              //kodingan kostum kalender
              calendarStyle: CalendarStyle(
                isTodayHighlighted: true,
                selectedDecoration: BoxDecoration(
                  color: Colors.purple[300],
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                todayDecoration: BoxDecoration(
                  color: Colors.purple[300],
                  shape: BoxShape.circle,
                ),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
            ),

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
                              ('Tanggal : ' + focusedDay.toString()),
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
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
                              'Total : ' + widget.data.ttl,
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            // Container(
            //   margin: EdgeInsets.all(20),
            //   child: Row(
            //     children: [
            //       Container(
            //         margin: EdgeInsets.only(top: 30),
            //         // child: Text('Tanggal : ' + focusedDay.toString()),
            //         child: Text(
            //           'Tanggal : ' + focusedDay.toString(),
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //             fontStyle: FontStyle.normal,
            //             fontSize: 17,
            //             fontWeight: FontWeight.bold,
            //             color: Colors.black,
            //           ),
            //         ),
            //       ),
            //       Container(
            //         // child: Text('Total : ' + widget.data.ttl),
            //         margin: EdgeInsets.only(top: 30),
            //         child: Text(
            //           ' | Total : ' + widget.data.ttl,
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //             fontStyle: FontStyle.normal,
            //             fontSize: 17,
            //             fontWeight: FontWeight.bold,
            //             color: Colors.black,
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(40),
                    height: 35,
                    width: 150,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple[300],
                          onPrimary: Colors.white,
                        ),
                        child: const Text('Pesan'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  HalamanEmpat(kirim: focusedDay.toString())));
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
