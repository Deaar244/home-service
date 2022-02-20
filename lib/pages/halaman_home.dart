import 'package:flutter/material.dart';
import '/pages/halaman_kedua.dart';

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
        //backgroundColor: Colors.purple[300],
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
              'Clean Home, Clean Life\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          )),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 60),
        child: Center(
          child: Text(
            'Suasana tempat tinggal yang kotor bikin kamu jadi gak nyaman?\n Kru berpengalaman langsung dari kami, memastikan anda mendapatkan pelayanan terbaik.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 14,
              color: Colors.grey[400],
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(20),
        width: 1500,
        height: 35,
        child: RaisedButton(
            color: Colors.black,
            elevation: 6.0,
            child: Text(
              "Pesan Sekarang",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HalamanDua(kirim: nilai.toString())));
            }),
      )
    ]));
  }
}
