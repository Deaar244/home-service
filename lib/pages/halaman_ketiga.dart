import 'package:flutter/material.dart';
import '/main.dart';
import '/pages/halaman_empat.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:flutter/material.dart';

class HalamanTiga extends StatefulWidget {
  HalamanTiga({Key? key, required this.kirim}) : super(key: key);
  String kirim;

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
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 35,
                    width: 100,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple[300],
                          onPrimary: Colors.white,
                        ),
                        child: const Text('Pesan'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  HalamanEmpat(kirim: nilai.toString())));
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
