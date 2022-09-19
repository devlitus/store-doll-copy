import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
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
      scaffoldBackgroundColor: const Color.fromARGB(5, 255, 255, 255));
}
