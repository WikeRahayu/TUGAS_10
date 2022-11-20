import 'halaman_awal.dart';
import 'package:flutter/material.dart';

class halaman_home extends StatefulWidget {
  static const String routes = 'halaman_home';
  const halaman_home({Key? key}) : super(key: key);

  @override
  State<halaman_home> createState() => _halaman_homeState();
}

class _halaman_homeState extends State<halaman_home> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController fullname = TextEditingController();
  String yourname = '';

  @override
  Widget build(BuildContext context) {
    final forminput = Padding(
      padding: EdgeInsets.all(8.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("Nama Kamu: $yourname"),
            ),
            TextFormField(
              controller: fullname,
              decoration:
                  const InputDecoration(hintText: 'Masukan Nama Anda Disini'),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    yourname = fullname.text;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextButton(
                    style:
                        TextButton.styleFrom(backgroundColor: Colors.lightBlue),
                    onPressed: () {
                      setState(() {
                        yourname = fullname.text;
                      });
                    },
                    child: Text(
                      "CETAK",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );

    final masuk = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Anda Telah Masuk',
        style: TextStyle(fontSize: 28.0, color: Colors.lightBlue),
      ),
    );

    final nama = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Input Nama Anda di bawah',
        style: TextStyle(fontSize: 17.0, color: Colors.lightBlue),
      ),
    );

    final tombollogout = Padding(
      padding: EdgeInsets.all(8.0),
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.lightBlue),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const halaman_awal();
          }));
        },
        child: Text(
          "Logout",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[masuk, nama, forminput, tombollogout],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Home'),
      ),
      body: body,
    );
  }
}
