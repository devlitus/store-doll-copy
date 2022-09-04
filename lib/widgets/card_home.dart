import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  const CardHome({
    Key? key,
    required this.size,
    required this.title,
    required this.image,
  }) : super(key: key);

  final double size;
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    final String title = this.title;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: size * 0.9,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: Image.asset(
            image,
            fit: BoxFit.cover,
          ).image,
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
