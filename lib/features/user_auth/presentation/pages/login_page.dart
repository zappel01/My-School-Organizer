import 'package:flutter/material.dart';
import 'package:log_in_auth/features/user_auth/presentation/pages/home_page.dart';
import 'package:log_in_auth/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5E7FF4),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 134,
              ),
              const Text(
                "Login",
                style: TextStyle(
                    fontFamily: 'SF',
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.black)),
                          filled: true,
                          fillColor: const Color(0xFFEBEBEB),
                          label: const Text('Email'),
                          hintText: 'Bitte E-mail adresse eingeben'),
                      scrollController: ScrollController(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.black)),
                          filled: true,
                          fillColor: const Color(0xFFEBEBEB),
                          label: const Text('Passwort'),
                          hintText: 'Bitte Passwort eingeben'),
                      scrollController: ScrollController(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 77,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Container(
                  width: 316,
                  height: 54,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFAFF05),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black)),
                  child: const Center(
                    child: Text("Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SF',
                            fontSize: 25)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sie haben kein Konto ?",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SF',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()),
                          (route) => false);
                    },
                    child: const Text(
                      "Melden Sie sich an",
                      style: TextStyle(
                          color: Color(0xFFFAFF05),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SF'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Durch die Erstellung oder Anmeldung eines Kontos stimmen Sie unseren',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SF',
                          fontSize: 10,
                        ),
                      ),
                      GestureDetector(
                        child: const Text(
                          'Allgemeine Geschäftsbedingungen',
                          style: TextStyle(
                            color: Color(0xFFFAFF05),
                            fontFamily: 'SF',
                            fontSize: 10,
                          ),
                        ),
                        onTap: () {
                          // Handle the top event here
                        },
                      ),
                      const Text(
                        'und der',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SF',
                          fontSize: 10,
                        ),
                      ),
                      GestureDetector(
                        child: const Text(
                          'Datenschutzerklärung',
                          style: TextStyle(
                            color: Color(0xFFFAFF05),
                            fontFamily: 'SF',
                            fontSize: 10,
                          ),
                        ),
                        onTap: () {
                          // Handle the top event here
                        },
                      ),
                      Text(
                        'zu',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SF',
                            fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
