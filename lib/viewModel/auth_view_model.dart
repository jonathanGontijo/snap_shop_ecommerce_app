import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthViewModel {
  createUserAccountWithEmailAndPassword(
    String name,
    String userEmail,
    String userPassword,
  ) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userEmail,
        password: userPassword,
      );

      return "SignUp Successful";
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }

  storeUserData({required String name, required String userEmail}) async {
    try {
      Map<String, dynamic> userData = {'name': name, 'email': userEmail};
      await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set(userData);
    } catch (e) {
      print('failed to save user data: $e');
    }
  }

  loginWithEmailAndPassword(String userEmail, String userPassword) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userEmail,
        password: userPassword,
      );

      return "Login Successful";
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }
}
