import 'package:flutter/material.dart';
import 'pages/halaman_home.dart';

TextEditingController catatan = TextEditingController();
TextEditingController nama = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController telepon = TextEditingController();
TextEditingController alamat = TextEditingController();

TextEditingController rtengah = TextEditingController();
TextEditingController kamar = TextEditingController();
TextEditingController wc = TextEditingController();
TextEditingController dapur = TextEditingController();
int harga = 0;
int a = 0;
int b = 0;
int c = 0;
int d = 0;

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
    debugShowCheckedModeBanner: false,
  ));
}
