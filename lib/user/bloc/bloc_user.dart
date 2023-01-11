import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:plstzi_trips_app/user/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBlog implements Bloc {

  final _auth_repository = AuthRepository();

  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase;

  Future<UserCredential> signIn() {
    return _auth_repository.signInFirebase();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  signOut() {
    _auth_repository.signOut();
  }
}