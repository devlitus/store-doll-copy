import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store_dolls/screens/homa_screen.dart';

import 'firebase_options.dart';

void main() {
  runApp(const MyApp());
}

void initConfigFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store Dolls',
      theme: ThemeData(
          primarySwatch: Colors.teal,
          backgroundColor: const Color.fromARGB(5, 255, 255, 255),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Colors.teal,
            ),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          buttonBarTheme: const ButtonBarThemeData(
            alignment: MainAxisAlignment.center,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.teal,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            elevation: 0,
          ),
          scaffoldBackgroundColor: const Color.fromARGB(5, 255, 255, 255)),
      home: const HomeScreen(),
    );
  }
}
