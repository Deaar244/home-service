// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//       title: 'Navigasi Halaman',
//       home: HalamanSatu(),
//       debugShowCheckedModeBanner: false));
// }

// class HalamanSatu extends StatelessWidget {
//   const HalamanSatu({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(children: [
//       new Image.network(
//           'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-cleaning-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png',
//           width: 250,
//           height: 250,
//           fit: BoxFit.cover),
//       SizedBox(
//         height: 50,
//       ),
//       Container(
//           padding: EdgeInsets.symmetric(horizontal: 40),
//           child: Center(
//             child: Text(
//               'Cara mudah dan \nandal untuk merawat rumah Anda\n',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.grey.shade900,
//               ),
//             ),
//           )),
//       Container(
//         padding: EdgeInsets.symmetric(horizontal: 60),
//         child: Center(
//           child: Text(
//             'Kami menyediakan Anda dengan orang-orang terbaik untuk membantu mengurus rumah Anda.',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.grey.shade600,
//             ),
//           ),
//         ),
//       ),
//       Padding(
//           padding: EdgeInsets.all(50.0),
//           child: MaterialButton(
//             elevation: 0,
//             color: Colors.black,
//             onPressed: () {},
//             height: 55,
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//             child: Center(
//               child: Text(
//                 'Mulai',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//           ))
//     ]));
//   }
// }

import 'package:flutter/material.dart';

TextEditingController nilaisurvei = TextEditingController();
TextEditingController nilaisurvei2 = TextEditingController();

TextEditingController nilaisurvei3 = TextEditingController();
TextEditingController nilaisurvei4 = TextEditingController();
TextEditingController nilaisurvei5 = TextEditingController();
int nilai = 0;

void main() {
  runApp(const MaterialApp(
    title: 'MetClean',
    home: HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  const HalamanSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("MetClean"),
        ),
        body: Column(children: [
          new Image.network(
              'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-cleaning-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png',
              width: 250,
              height: 250,
              fit: BoxFit.cover),
          SizedBox(
            height: 50,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Center(
                child: Text(
                  'Cara mudah dan \nandal untuk merawat rumah Anda\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade900,
                  ),
                ),
              )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Center(
              child: Text(
                'Kami menyediakan Anda dengan orang-orang terbaik untuk membantu mengurus rumah Anda.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(50.0),
              child: MaterialButton(
                elevation: 0,
                color: Colors.black,
                onPressed: () {},
                height: 55,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Mulai',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ))
        ]));
  }
}

class HalamanDua extends StatelessWidget {
  String kirim;
  HalamanDua({Key? key, required this.kirim}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pertanyaan 2"),
        ),
        body: Center(
            child: Column(children: <Widget>[
          Container(
            child: Text("Apakah anda letih?"),
          ),
          Container(
              child: TextField(
            controller: nilaisurvei2,
            style: TextStyle(fontSize: 24, color: Colors.black),
          )),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
                child: const Text('Ke Halaman Tiga'),
                onPressed: () {
                  if (nilaisurvei2.text == "y") {
                    nilai = int.parse(kirim) + 20;
                  } else {
                    nilai = int.parse(kirim);
                  }
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          HalamanTiga(kirim: nilai.toString())));
                }),
          ),
        ])));
  }
}

class HalamanTiga extends StatelessWidget {
  String kirim;
  HalamanTiga({Key? key, required this.kirim}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pertanyaan 3"),
        ),
        body: Center(
            child: Column(children: <Widget>[
          Container(
            child: Text("Apakah hidung anda tersumbat (y/t)?"),
          ),
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

class HalamanEmpat extends StatelessWidget {
  String kirim;
  HalamanEmpat({Key? key, required this.kirim}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pertanyaan 4"),
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
                          HalamanLima(kirim: nilai.toString())));
                }),
          ),
        ])));
  }
}

class HalamanLima extends StatelessWidget {
  String kirim;
  HalamanLima({Key? key, required this.kirim}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pertanyaan 5"),
        ),
        body: Center(
            child: Column(children: <Widget>[
          Container(
            child: Text("Apakah anda mual (y/t)?"),
          ),
          Container(
              child: TextField(
            controller: nilaisurvei5,
            style: TextStyle(fontSize: 24, color: Colors.black),
          )),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
                child: const Text('Ke Halaman Dua'),
                onPressed: () {
                  if (nilaisurvei5.text == "y") {
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

class HalamanHasil extends StatelessWidget {
  String kirim;
  HalamanHasil({Key? key, required this.kirim}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          title: Text(
            'MetClean',
            style: TextStyle(color: Colors.white),
          ),
          elevation: 4.0,
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
                            width: 15,
                            height: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "dea apriliani r",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 5,
                  width: 15,
                ),
                Text(
                  "089661946495",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7), fontSize: 18),
                ),
                Text(
                  "Margaasih",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7), fontSize: 18),
                ),
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
