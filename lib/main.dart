import 'package:flutter/material.dart';
import 'package:pemmob_uts/presentation/pages/sdpage.dart';
import 'package:pemmob_uts/presentation/pages/smppage.dart';
import 'package:pemmob_uts/presentation/pages/tkpage.dart';
import 'core/navigation_service.dart';
import 'presentation/pages/homepage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService.navigatorKey, 
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/tkpage': (context) => Tkpage(),
        '/sdpage': (context) => Sdpage(),
        '/smppage': (context) => Smppage(),
      },
    );
  }
}