import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  Future getImage() async {
    final QuerySnapshot result = await _db.collection('images').get();
    final List<DocumentSnapshot> documents = result.docs;
    final items = documents.map((e) => e.data());
    return items;
    // return documents;
  }
}
