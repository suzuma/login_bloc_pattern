import 'package:login_bloc_pattern/exceptions/authentication_exception.dart';
import 'package:login_bloc_pattern/models/user.dart';

abstract class AuthenticationService {
  Future<User> getCurrentUser();
  Future<User> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
}

class FakeAuthenticationService extends AuthenticationService {
  @override
  Future<User> getCurrentUser() async {
    return null; // return null for now
  }

  @override
  Future<User> signInWithEmailAndPassword(String email, String password) async {
    await Future.delayed(Duration(seconds: 1)); // simulate a network delay

    if (email.toLowerCase() != 'test@gmail.com' || password != '123123') {
      throw AuthenticationException(
          message: 'Nombre de usuario o contraseña incorrectos');
    }
    return User(name: 'Usuario de prueba', email: email);
  }

  @override
  Future<void> signOut() {
    return null;
  }
}
