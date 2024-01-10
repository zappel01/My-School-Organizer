import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:log_in_auth/features/app/splash_screen/splash_screen.dart';

import 'features/user_auth/presentation/pages/login_page.dart';
import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Firebase',
        home: SplashScreen(
          child: LoginPage(),
        ));
  }
}
