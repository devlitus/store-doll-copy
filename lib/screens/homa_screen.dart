import 'package:flutter/material.dart';
import 'package:store_dolls/screens/amigurumi_sccreen.dart';
import 'package:store_dolls/widgets/card_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          GestureDetector(
            child: Center(
              child: CardHome(
                size: size,
                title: 'Amigurumi',
                image: 'images/amigurumi.jpg',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AmirugumiScreen(),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          Center(
            child: CardHome(
              size: size,
              title: 'Ganchillo',
              image: 'images/ganchillo.jpg',
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: CardHome(
              size: size,
              title: 'Dolls',
              image: 'images/ganchillo.jpg',
            ),
          ),
        ]),
      ),
    );
  }
}
