import 'package:blood_donation_app/addscreen.dart';
import 'package:blood_donation_app/firebase_options.dart';
import 'package:blood_donation_app/home/home_screen.dart';
import 'package:blood_donation_app/home/update_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (context) => ScreenHome(),
        '/add': (context) => AddDonorScreen(),
        '/update': (context) => UpdateDonorScreen(),
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
    );
  }
}
