import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store_dolls/screens/homa_screen.dart';
import 'package:store_dolls/theme/theme_dark.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

void initConfigFirebase() async {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store Dolls',
      theme: theme(),
      home: const HomeScreen(),
    );
  }
}
