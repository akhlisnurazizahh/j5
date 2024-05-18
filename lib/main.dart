import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nama Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MahasiswaPage(),
    );
  }
}

class MahasiswaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MahasiswaInfo(
                teks1: 'AJENG DWI FEBRIANA',
                teks2: 'NIM : STI202102273',
              ),
              SizedBox(
                  height: 10), // Tambahkan jarak antara setiap MahasiswaInfo
              MahasiswaInfo(
                teks1: 'YUDHA',
                teks2: 'NIM : STI202102274',
              ),
              SizedBox(
                  height: 10), // Tambahkan jarak antara setiap MahasiswaInfo
              Container(
                color:
                    Colors.green, // Latar belakang hijau hanya untuk entri ini
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'AKHLIS NUR AZIZAH',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      'NIM : STI202102276',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: 10), // Tambahkan jarak antara setiap MahasiswaInfo
              MahasiswaInfo(
                teks1: 'EMI FITRIANI',
                teks2: 'NIM : STI202102277',
              ),
              SizedBox(
                  height: 10), // Tambahkan jarak antara setiap MahasiswaInfo
              MahasiswaInfo(
                teks1: 'TIYAN DESI WULANDARI',
                teks2: 'NIM : STI202102278',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MahasiswaInfo extends StatelessWidget {
  final String teks1;
  final String teks2;

  MahasiswaInfo({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            teks1,
            style: TextStyle(fontSize: 25),
          ),
          Text(
            teks2,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
