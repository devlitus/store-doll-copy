import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:store_dolls/models/image_model.dart';

class FirebaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  Future<List<ImageModel>> getImage() async {
    final QuerySnapshot result = await _db.collection('amigurumi').get();
    final List<DocumentSnapshot> documents = result.docs;
    final decodedData = documents
        .map((doc) => ImageModel.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
    return decodedData;
  }
}
// https://res.cloudinary.com/djhxmjnb4/image/upload/v1662274986/amigurumi/zetfmvxns1gseopf3lh3.jpg