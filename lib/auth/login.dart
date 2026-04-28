import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockmarket_simulator_1/auth/registration_page.dart';
import 'package:stockmarket_simulator_1/dashboard/dashboard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.black,
            width: 1.0,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignCenter),
        borderRadius: BorderRadius.all(Radius.circular(20)));

    return Scaffold(
      backgroundColor: Color(0xFF008DDA),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Welcome Back',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: Colors.white)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    hintText: 'Enter mail id',
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
                style: TextStyle(color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter Password',
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DashboardPage()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    minimumSize: const Size(175, 42)),
                //minimumSize: const Size(double.infinity, 42),
                child: const Text('LOGIN'),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()));
            },
            child: const Text(
              'New? Register now',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      )),
    );
  }
}
