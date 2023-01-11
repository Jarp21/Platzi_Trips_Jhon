import 'package:firebase_auth/firebase_auth.dart';
import 'package:plstzi_trips_app/user/repository/Firebase_auth_api.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<UserCredential> signInFirebase() => _firebaseAuthAPI.signIn();

  signOut() => _firebaseAuthAPI.singOut();
}