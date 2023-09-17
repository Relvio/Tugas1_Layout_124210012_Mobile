import 'package:flutter/material.dart';
import 'package:layout_mobile/main.dart';
void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/kucing3.jpg"), // Ganti dengan path gambar latar belakang Anda
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 90.0,
            left: 25.0,
            child: Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 125.0,
            left: 25.0,
            child: Text(
              "Enter Your Username & Password",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white60,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 300.0,
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4), // Semi-transparan
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,),
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    style: TextStyle(color: Colors.white,
                    fontSize: 20.0),
                    obscureText: true, // Untuk menyembunyikan password
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi saat tombol Login ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white70.withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0), // Ubah angka sesuai dengan preferensi Anda
                      ),
                    ),
                    child: Text("Login",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 15.0,
            left: 10.0,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
