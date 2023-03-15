import 'package:flutter/material.dart';
import 'package:unj/main.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
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
        child: SingleChildScrollView(
          child: Container(
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
                    'Silahkan Registrasi Akun',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Input Fullname'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Input Alamat'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Nomor Telepon'),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true, //Hidden Text
                    decoration: InputDecoration(hintText: 'Input Password'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    onPressed: () {},
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
                      // Pindah Ke Login
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageHomeUtama()));
                    },
                    child: Text(
                      'Sudah memiliki akun? Silahkan Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blueGrey),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
