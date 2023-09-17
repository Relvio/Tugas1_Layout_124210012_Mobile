import 'package:flutter/material.dart';
import 'package:layout_mobile/login.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/kucing.jpg"), // Ganti dengan path gambar latar belakang Anda
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Hello!",
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 3.5,
                  ),
                ),
                SizedBox(height: 200.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white24.withOpacity(0.3),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0), // Ubah angka sesuai dengan preferensi Anda
                    ),
                  ),
                  child: const Text("   continue   ",
                    style: TextStyle(
                      fontSize: 20.0,
                      height: 1.0,

                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
