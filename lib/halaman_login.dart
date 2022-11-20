import 'package:applogin/halaman_home.dart';
import 'package:flutter/material.dart';

class halaman_login extends StatefulWidget {
  static const String routes = 'halaman_login';
  const halaman_login({Key? key}) : super(key: key);

  @override
  State<halaman_login> createState() => _halaman_loginState();
}

class _halaman_loginState extends State<halaman_login> {
  @override
  _halaman_loginState createState() => _halaman_loginState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Login'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.lightBlue, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Silahkan Masuk",
              style: TextStyle(fontSize: 20, color: Colors.lightBlue),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Isi Username Anda";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightBlue)),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 40,
                        ),
                        hintText: "Masukan Username",
                        hintStyle: TextStyle(color: Colors.black87),
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.black87)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Isi Password Anda";
                      }
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightBlue)),
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 40,
                        ),
                        hintText: "Masukan Password",
                        hintStyle: TextStyle(color: Colors.black87),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black87)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    color: Colors.lightBlue,
                    elevation: 5,
                    child: Container(
                      height: 50,
                      child: InkWell(
                        splashColor: Colors.white,
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const halaman_home();
                          }));
                        },
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
