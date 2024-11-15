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
      home: Smppage(),
    );
  }
}

class Smppage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SMP Pasar Kemis'),
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
                  'SMPN 1 PASAR KEMIS',
                  'Jl. Raya Pasar Kemis KM.4, Kec. Pasar Kemis',
                  'Sehari Penuh/5 hari',
                  'Merdeka',
                  '0215903476',
                  'info@smpn1pasarkemis.sch.id',
                  'assets/image/smpn 1.jpg',
                ),
                _buildProfileContainer(
                  'SMPN 2 PASAR KEMIS',
                  'Jl. Boegenville Raya Perum Bumi Indah, Kec.Pasar Kemis',
                  'Sehari Penuh/5 hari',
                  'Merdeka',
                  '02159311074',
                  'smpn2pasarkemis@yahoo.co.id',
                  'assets/image/smpn 2.jpg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileContainer(
    String namaSmp,
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
              height: 180, // Ukuran gambar diperbesar
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            namaSmp,
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
