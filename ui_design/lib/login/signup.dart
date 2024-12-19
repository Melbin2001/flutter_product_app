import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/drawer/account_page.dart';
import 'package:ui_design/login/login.dart';
import 'package:ui_design/starting.dart';


 final _username = TextEditingController();

// ignore: camel_case_types
class Sign_up_page extends StatefulWidget {
   const Sign_up_page({super.key});
 

  @override
  State<Sign_up_page> createState() => _Sign_up_pageState();
}

// ignore: camel_case_types
class _Sign_up_pageState extends State<Sign_up_page> { 

  final _page = AccountPage(username: _username);
  final _auth = FirebaseAuth.instance;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 78,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'Sign Up',
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
                controller: _username,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'username is empty';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              const SizedBox(
                height: 15,
              ),
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
                          Color.fromARGB(255, 25, 93, 196))),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      _signUp();
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
                    'Return to',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const Login_page()));
                      },
                      child: const Text(
                        'Login?',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 15, 66, 160)),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _signUp() async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // Handle successful sign-up
      Navigator.pushReplacement(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(builder: (_) => const Startingpage()));
    } catch (e) {
      // Handle sign-up error
      print('Sign Up Failed: $e');
    }
  }
}
