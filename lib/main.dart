import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:speak_it_app/pages/app/home.dart';
import 'package:speak_it_app/pages/app/profile.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const ProfilePage(),
    );
  }
}
