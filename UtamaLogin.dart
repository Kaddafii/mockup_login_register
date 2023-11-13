import 'package:flutter/material.dart';
import 'loginPenyewa.dart';
import 'loginPemilik.dart';

class UtamaLogin extends StatelessWidget {
  const UtamaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Image.asset('assets/images/arrow.png'),
        ),
        title: Text(
          'Login Sebagai',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 24,
            color: Color.fromRGBO(29, 77, 79, 1.0),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/images/Klogo3.png', height: 200),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the owner screen
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const loginPenyewa()));
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Transform.translate(
                    offset: Offset(
                        -70, -30), // Geser gambar ke kiri sebanyak 20 piksel
                    child: SizedBox(
                      width: 245,
                      height: 100,
                      child: Transform.scale(
                        scale: 1.7,
                        child: Image.asset('assets/images/penyewa.png'),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-20, 0),
                    child: Text(
                      'Penyewa',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(40, 48, 72, 1.0),
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                // Navigate to the renter screen
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const loginPemilik())));
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Transform.translate(
                    offset: Offset(20, 0),
                    child: Text(
                      'Pemilik',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(
                        60, -30), // Geser gambar ke kanan sebanyak 20 piksel
                    child: SizedBox(
                      width: 260,
                      height: 100,
                      child: Transform.scale(
                        scale: 1.7,
                        child: Image.asset('assets/images/pemilik2.png'),
                      ),
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(40, 48, 72, 1.0),
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
