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
            'Suasana tempat tinggal yang kotor bikin kamu jadi gak nyaman?\n Kru berpengalaman langsung dari kami, memastikan anda mendapatkan pelayanan terbaik.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(20),
        height: 35,
        width: 1300,
        color: Colors.black,
        child: ElevatedButton(
            child: const Text('Pesan sekarang'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HalamanDua(kirim: nilai.toString())));
            }),
      ),
    ]));
  }
}
