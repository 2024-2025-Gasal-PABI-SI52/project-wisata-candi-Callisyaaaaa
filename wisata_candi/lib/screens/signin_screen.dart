import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';
  bool _isSignIn = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APP BAR
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      // BODY
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Nama Pengguna',
                  hintText: 'Masukan Nama Pengguna',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Kata Sandi',
                  hintText: 'Masukan Kata Sandi',
                  border: const OutlineInputBorder(),
                  errorText: _errorText.isNotEmpty ? _errorText : null,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
                obscureText: _obscurePassword,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Sign In'),
              ),
              const SizedBox(
                height: 10,
              ),
              //TextButton(
              //onPressed: () {},
              //child: Text('Belum Punya Akun? Daftar di sini.'),
              //),
              RichText(
                  text: TextSpan(
                      text: 'Belum punya akun? ',
                      style: const TextStyle(
                          fontSize: 16, color: Colors.deepPurple),
                      children: [
                    TextSpan(
                      text: 'Daftar di sini.',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    )
                  ]))
            ],
          )),
        ),
      ),
    );
  }
}
