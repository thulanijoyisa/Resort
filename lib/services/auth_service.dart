import 'package:longevity_resort/models/user_model.dart';
import 'package:longevity_resort/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
    String hobby = '',
  }) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel user = UserModel(
        id: userCredential.user!.uid,
        email: email,
        name: name,
        hobby: hobby,
        balance: 2800000,
      );

      await UserService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }
}
