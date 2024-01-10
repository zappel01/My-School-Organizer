import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final Widget? child;
  const SplashScreen({super.key, this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => widget.child!),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 59, 245, 63),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/puzzel.png',
              height: 320,
              width: 320,
            ),
            const SizedBox(height: 20),
            const Text(
              'My',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Shadow', fontSize: 48),
            ),
            const Text(
              'School',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Shadow', fontSize: 48),
            ),
            const Text(
              'Organizer',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Shadow', fontSize: 48),
            ),
          ],
        ),
      ),
    );
  }
}
