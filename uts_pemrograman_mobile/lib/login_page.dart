import 'package:flutter/material.dart';
import 'home_page.dart';

final ThemeData loginFont = ThemeData(
  fontFamily: 'Sublima',
);

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  //variabel untuk mengontrol password bisa lihat dan tidak
  bool _isPasswordVisible = false;
  // controller untuk isi logika dan set username dan password
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _login() {
    if (_formKey.currentState!.validate()) {
      if (_usernameController.text == 'admin' && _passwordController.text == 'admin123') { //set username dan password
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(username: _usernameController.text),
          ),
        );
      } else {
        _showErrorNotification('Username atau password tidak valid');
      }
    }
  }

  void _showErrorNotification(String message) { // error handling notifikasi
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 60),
                Row(
                  children: [
                    Image.asset('assets/images/login_logo.png', height: 80),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Selamat datang di AbsenSync',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Masukkan username dan password untuk masuk',
                  style: TextStyle(fontSize: 14, color: Color.fromRGBO(54, 54, 54, 1)),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: _usernameController,
                  style: const TextStyle(fontFamily: 'Sublima'),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    labelText: 'Username',
                    prefixIcon: const Icon(Icons.person),
                  ),
                  validator: (value) { //validator untuk username jika kosong
                    if (value == null || value.isEmpty) {
                      return 'Username tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  style: const TextStyle(fontFamily: 'Sublima'),
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                  validator: (value) { //validator untuk password jika kosong
                    if (value == null || value.isEmpty) {
                      return 'Password tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: const Color.fromRGBO(98, 0, 151, 1),
                    ),
                    onPressed: _login,
                    child: const Text(
                      'Masuk',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}