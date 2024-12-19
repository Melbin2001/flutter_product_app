import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/login/signup.dart';
import 'package:ui_design/starting.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  final _auth = FirebaseAuth.instance;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 78,
        backgroundColor: const Color.fromARGB(255, 254, 255, 255),
        title: const Text(
          'Login',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formkey,
           child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'email is empty';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: 'enter your email',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
                controller: _emailController,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'password is empty';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: 'enter your password',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
                controller: _passwordController,
                obscureText: true,
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 21, 110, 211))),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      _login();
                    } else {
                      print('data is empty');
                    }
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    
                  )),
              const SizedBox(
                height: 15,
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Go to',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const Sign_up_page()));
                      },
                      child: const Text(
                        'Sign Up?',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 12, 87, 156)),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _login() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => Startingpage()));
      // Navigate to home page or wherever you want
    } catch (e) {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            'Check your email or password',
            style: TextStyle(color: Colors.black),
          ),
          margin: EdgeInsets.all(10),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Color.fromARGB(255, 6, 130, 212),
        ));
      });
    }
  }
}
