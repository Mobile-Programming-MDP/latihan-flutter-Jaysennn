import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = "";
  bool _obscurePassword = true;
  //TODO 1:
  void _signUp() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String name = _nameController.text.trim();
    final String username = _usernameController.text.trim();
    final String password = _passwordController.text.trim();

    if(password.length < 8 || 
    !password.contains(RegExp(r'[A-Z]')) ||
    !password.contains(RegExp(r'[a-z]')) ||
    !password.contains(RegExp(r'[0-9]')) ||
    !password.contains(RegExp(r'[!@#$%^&*()<>?:"{}|,./;\]'))){
      setState(() {
        _errorText=
          'Minimal 8 Karakter, Kombinasi Semua';
      });
      return;
    }

    // print('*** Sign Up Berhasil ***');
    // print('Nama: $name');
    // print('Nama Pengguna: $username');
    // print('Password: $password');

    prefs.setString('fullname', name);
    prefs.setString('username', username);
    prefs.setString('password', password);

    Navigator.pushReplacementNamed(context, '/signin');
  }

  //TODO 2: Fungsi Dispose
  @override
  void dispose(){
    //TODO: Implement Dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Nama",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Nama Pengguna",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Kata Sandi',
                      errorText: _errorText.isNotEmpty ? _errorText : null,
                      border: const OutlineInputBorder(),
                    ),
                    obscureText: _obscurePassword,
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen()));
                    }, 
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}