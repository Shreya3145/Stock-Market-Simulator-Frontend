import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockmarket_simulator_1/auth/login.dart';
import 'package:stockmarket_simulator_1/dashboard/dashboard.dart';
//import 'package:stockmarket_simulator_1/onboarding_page_1.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});
  @override
  State<RegistrationPage> createState() {
    return _RegistrationPage();
  }
}

class _RegistrationPage extends State<RegistrationPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final border = OutlineInputBorder(
      borderSide: BorderSide(
          color: Colors.black,
          width: 1.0,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignCenter),
      borderRadius: BorderRadius.all(Radius.circular(15)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF008DDA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Welcome to StockWave',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Colors.white)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 40,
                child: Text('Sign Up',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  controller: _usernameController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: border,
                      enabledBorder: border),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  controller: _emailController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.email_outlined),
                      prefixIconColor: Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: border,
                      enabledBorder: border),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  controller: _passwordController,
                  style: TextStyle(color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.key_outlined),
                      prefixIconColor: Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: border,
                      enabledBorder: border),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  controller: _confirmPasswordController,
                  style: TextStyle(color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.key_outlined),
                      prefixIconColor: Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: border,
                      enabledBorder: border),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 35,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardPage()));
                    // final username = _usernameController.text;
                    // final email = _emailController.text;
                    // final password = _passwordController.text;
                    // final confirmPassword = _confirmPasswordController.text;

                    // print(username);
                    // print(email);
                    // print(password);
                    // print(confirmPassword);
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      minimumSize: const Size(150, 42)),
                  //minimumSize: const Size(double.infinity, 42),
                  child: const Text('GET STARTED'),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: const Text(
                'Already have an account? Login',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
