import 'package:flutter/material.dart';
import 'registPenyewa.dart';

class loginPenyewa extends StatelessWidget {
  const loginPenyewa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            'Login penyewa',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Color.fromRGBO(29, 77, 79, 1.0),
            ),
          ),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: Align(
              child: Image.asset('assets/images/Klogo3.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Alamat Email
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Alamat email",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Color.fromRGBO(29, 77, 79, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "user@gmail.com",
                      hintStyle: TextStyle(color: (Colors.grey[300])!),
                    ),
                  ),
                ]),
              ),
              // Password
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Color.fromRGBO(29, 77, 79, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                    hintText: "password",
                    hintStyle: TextStyle(color: (Colors.grey[300])!),
                  ),
                ),
              ),
            ],
          ),
          // Login button
          Expanded(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: SizedBox(
                  width: 242,
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(40, 48, 72, 1),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(0.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  // Belum Punya akun
                  Text(
                    "Belum punya akun?",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: (Colors.grey[500])!,
                    ),
                  ),
                  // Daftar Button
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const registPenyewa())));
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: (Colors.grey[500])!),
                    child: const Text(
                      "Daftar",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Color.fromRGBO(60, 139, 23, 1)),
                    ),
                  ),
                ]),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
