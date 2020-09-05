import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commandaapp/app/repositories/repository_interface.dart';
import 'package:commandaapp/models/menu_item.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseRepository extends IRepository {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future<bool> loginWithEmailAndPassword(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      auth.createUserWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  facebookLogin() {
    return null;
  }

  @override
  googleLogin() {
    return null;
  }

  @override
  logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Stream<List<MenuItem>> getAllCategories() {
    return Firestore.instance
        .collection('store')
        .document('KJNSkSxyTyLXKwCV6jD6')
        .collection('products')
        .snapshots()
        .map((doc) {
      // return doc.documents.map((doc) {
      //   // return MenuItem.fromJson(doc);
      // });
    });
  }

  @override
  Stream getAllMenuItems() {
    return Firestore.instance
        .collection('store')
        .document('KJNSkSxyTyLXKwCV6jD6')
        .collection('products')
        .snapshots()
        .map((doc) {
      // return doc.documents.map((doc) {
      //   return MenuItem.fromJson(doc);
      // });
    });
  }
}
