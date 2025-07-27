import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/spotify/data/models/authentication/create_user_req.dart';

abstract class AuthFirebaseService {
  Future<void> signup(createUserReq createUserReq);
  Future<void> signin(String email, String password);
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<void> signup(createUserReq createUserReq) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: createUserReq.email,
        password: createUserReq.password,
      );
    } on FirebaseAuthException catch (e) {
      print("Signup failed: ${e.message}");
    }
  }


  @override
  Future<void> signin(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      print("Signin failed: ${e.message}");
    }
  }
}
