import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? get currentUser => _firebaseAuth.currentUser;
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
}) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
  Future<void> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String username,
    required String password,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password);

  }
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
  Future<void> resetPassword({
    required String email,
    required String newPassword,
  }) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
    await _firebaseAuth.currentUser!.updatePassword(newPassword);
  }
  bool isUserSignedIn() {
    return _firebaseAuth.currentUser != null;
  }
}