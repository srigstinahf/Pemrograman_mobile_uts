import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Sekolah'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Desa Pasar Kemis',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/image/kabtangerang.png', 
              width: 100,
              height: 100,
            ),
            SizedBox(height: 10), 
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start, 
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0), 
                      child: Container(
                        width: double.infinity,
                        height: 120, 
                        child: Image.asset(
                          'assets/image/kantor desa pakem.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Kantor Desa: Jalan Cempaka V Blok HL No.12, Pasar Kemis, Sukamantri, Tangerang, Banten',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Kepala Desa: Al Haetomi, SE',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Kontak: (021) 123 456 78',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Email: kec.pasarkemis@gmail.com',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            _controller.onGoToTkPagePressed();
                          },
                          child: Text('TK'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            _controller.onGoToSdPagePressed();
                          },
                          child: Text('SD'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            _controller.onGoToSmpPagePressed();
                          },
                          child: Text('SMP'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
