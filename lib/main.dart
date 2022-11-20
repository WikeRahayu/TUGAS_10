import 'halaman_home.dart';
import 'halaman_login.dart';
import 'halaman_awal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Applogin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const halaman_awal(),
      routes: {
        halaman_awal.routes: (context) => const halaman_awal(),
        halaman_login.routes: (context) => const halaman_login(),
        halaman_home.routes: (context) => const halaman_home(),
      },
    );
  }
}