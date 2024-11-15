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
      home: Sdpage(),
    );
  }
}

class Sdpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SD Pasar Kemis'),
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
                  'SDN 1 Pasar Kemis',
                  'Jl. Raya Pasarkemis, Kp.Kebon Kelapa, Kec.Pasar Kemis',
                  'Sehari Penuh/5 hari',
                  'Merdeka',
                  '-',
                  'sdnpasarkemis1@gmail.com',
                  'assets/image/sdn1.jpg',
                ),
                _buildProfileContainer(
                  'SDN 2 Pasar Kemis',
                  'Jl. Raya Pasarkemis di samping SDN 1 Pasar Kemis, Kp.Kebon Kelapa, Kec.Pasar Kemis',
                  'Sehari Penuh/5 hari',
                  'Merdeka',
                  '-',
                  'sdn.pasarkemis2@gmail.com',
                  'assets/image/sdn 2.jpg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileContainer(
    String namaSd,
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
            namaSd,
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
