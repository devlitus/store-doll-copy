import 'package:flutter/material.dart';

class AmirugumiScreen extends StatelessWidget {
  const AmirugumiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.74),
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: Image.network(
                              'https://res.cloudinary.com/djhxmjnb4/image/upload/v1662274986/amigurumi/zetfmvxns1gseopf3lh3.jpg',
                              fit: BoxFit.contain,
                            ).image,
                          ),
                        ),
                        child: null,
                      ),
                      const Positioned(
                        top: 0,
                        left: 5,
                        child: IconButton(
                          iconSize: 40,
                          onPressed: null,
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'KIKI',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          itemCount: 6,
        ),
      ),
    );
  }
}
// 'https://res.cloudinary.com/djhxmjnb4/image/upload/v1662274986/amigurumi/zetfmvxns1gseopf3lh3.jpg'
