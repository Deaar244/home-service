import 'package:flutter/material.dart';
import '/pages/halaman_kedua.dart';

int ttl = 0;

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
        backgroundColor: Colors.purple[300],
        body: Column(children: [
          Container(
            width: 500,
            height: 50,
            margin: EdgeInsets.only(top: 30),
            child: Text(
              'MetClean',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-cleaning-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png'),
                    fit: BoxFit.cover),
              )),
          Container(
              width: 500,
              height: 50,
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  'Clean Home Clean Life\n',
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
            width: 500,
            height: 50,
            margin: EdgeInsets.only(top: 10),
            child: Center(
              child: Text(
                'Suasana tempat tinggal yang kotor bikin kamu jadi gak nyaman?\n Kru berpengalaman langsung dari kami, memastikan anda \n mendapatkan pelayanan terbaik.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 35,
            width: 1300,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                ),
                child: const Text('Pesan sekarang'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HalamanDua(
                            ttl: ttl.toString(),
                          )));
                }),
          ),
          Container(
            width: 500,
            height: 50,
            margin: EdgeInsets.only(right: 30),
            child: Text(
              '*Jangan khawatir, vendor kami 80% telah divaksin, menggunakan masker, rajin mencuci tangan, dan \n selalu menyediakan sanitasi peralatan',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 10,
                color: Colors.black,
              ),
            ),
          ),
        ]));
  }
}
