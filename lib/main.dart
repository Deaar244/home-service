import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      title: 'Navigasi Halaman',
      home: HalamanSatu(),
      debugShowCheckedModeBanner: false));
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
