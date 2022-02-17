import 'package:flutter/material.dart';
import 'pages/halaman_home.dart';

  TextEditingController catatan = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController telepon = TextEditingController();
  TextEditingController alamat = TextEditingController();

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
