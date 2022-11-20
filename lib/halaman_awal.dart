import 'halaman_login.dart';
import 'package:flutter/material.dart';

class halaman_awal extends StatefulWidget {
  static const String routes = 'halaman_awal';
  const halaman_awal({Key? key}) : super(key: key);

  @override
  State<halaman_awal> createState() => _halaman_awalState();
}

class _halaman_awalState extends State<halaman_awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Halaman Awal'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Selamat Datang Di Aplikasi Buatan Saya"),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const halaman_awal();
                  }));
                },
                child: TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.lightBlue),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const halaman_login();
                    }));
                  },
                  child: Text(
                    "Lanjut Masuk",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ])
        ],
      )),
    );
  }
}
