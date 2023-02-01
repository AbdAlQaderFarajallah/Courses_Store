import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/course.dart';

class FbFireStoreController {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  //CRUD
  Future<bool> create({required Course course}) async {
    return _firebaseFirestore
        .collection('Course')
        .add(course.toMap())
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<bool> delete({required String path}) {
    return _firebaseFirestore
        .collection('Course')
        .doc(path)
        .delete()
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<bool> update({required Course course}) {
    return _firebaseFirestore
        .collection('Course')
        .doc(course.id)
        .update(course.toMap())
        .then((value) => true)
        .catchError((error) => false);
  }

  Stream<QuerySnapshot> read() async* {
    yield* _firebaseFirestore.collection('Course').snapshots();
  }
}
