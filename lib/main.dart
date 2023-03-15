import 'package:flutter/material.dart';
import 'package:unj/ui_screen/page_register.dart';
import 'package:unj/ui_screen/page_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UNJ Apps',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.yellow,
      ),
      home: const PageSplashScreen(),
      // Hilangkan Debug
      debugShowCheckedModeBanner: false,
    );
  }
}

// stful

class PageHomeUtama extends StatefulWidget {
  const PageHomeUtama({super.key});

  @override
  State<PageHomeUtama> createState() => _PageHomeUtamaState();
}

class _PageHomeUtamaState extends State<PageHomeUtama> {
  // Text Controller
  TextEditingController etUsername = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UNJ Apps'),
        centerTitle: true,
      ),

      // appBar : Properti Widget
      // AppBar : Widget
      // Child : Bisa Menampung 1 Widget
      // Children : Bisa Menampung Banyak Children

      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset(
                'images/logo_unj.png',
                fit: BoxFit.fill,
                height: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Selamat Datang di UNJ Apps',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: etUsername,
                decoration: InputDecoration(hintText: 'Input Username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: etPassword,
                obscureText: true, //Hidden Text
                decoration: InputDecoration(hintText: 'Input Password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  // get data
                  String nName = etUsername.text;
                  String nPassword = etPassword.text;
                  // cek login
                  // username == luthfi dan pass : 123
                  // bisa login
                  if ((nName == "luthfi") && (nPassword == "123")) {
                    // Berhasil login
                    print('Berhasil Login');
                  } else
                    print('Username Atau Password Salah');
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                color: Colors.yellowAccent,
                textColor: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  // Pindah Ke Register
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageRegister()));
                },
                child: Text(
                  'Belum memiliki akun? Silahkan Registrasi',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blueGrey),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
