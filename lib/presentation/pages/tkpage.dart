import 'package:flutter/material.dart';
import 'package:pemmob_uts/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tkpage(),
    );
  }
}

class Tkpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TK Pasar Kemis'),
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildProfileContainer(
                  'TK Tunas Harapan',
                  'Jl. Bumi Indah Blok B.2 No. 11.12 Desa Pasar Kemis',
                  'Pagi/6 hari',
                  'Merdeka',
                  '085282999507',
                  'tk.tunasharapan1234@gmail.com',
                  'assets/image/gedung_tk.jpg',
                ),
                _buildProfileContainer(
                  'TK Sigma Islamic School',
                  'Perum Kutabumi 2 Blok C1 No.17-18 Rt.05/21, Kec.Pasar Kemis',
                  'Pagi/6 hari',
                  'Merdeka',
                  '081387137336',
                  'isabellabellu@gmail.com',
                  'assets/image/tk sigma.jpg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileContainer(
    String namaTk,
    String alamat,
    String jamBelajar,
    String kurikulum,
    String kontak,
    String email,
    String imagePath,
  ) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              width: double.infinity,
              height: 120,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            namaTk,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Alamat: $alamat',
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            'Jam belajar: $jamBelajar',
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            'Kurikulum: $kurikulum',
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            'Kontak: $kontak',
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            'Email: $email',
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
