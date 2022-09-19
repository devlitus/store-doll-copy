import 'package:flutter/material.dart';
import 'package:store_dolls/models/image_model.dart';
import 'package:store_dolls/service/firebase.dart';

class ListAmigurumi extends StatelessWidget {
  const ListAmigurumi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ImageModel>>(
        future: FirebaseService().getImage(),
        builder: (context, AsyncSnapshot<List<ImageModel>> snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.74,
              ),
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
                                  snapshot.data![index].url,
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
                          Text(
                            snapshot.data![index].name,
                            style: const TextStyle(
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
              itemCount: snapshot.data?.length,
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
