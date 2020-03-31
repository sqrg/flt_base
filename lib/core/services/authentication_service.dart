import 'dart:async';
import 'dart:math';

class AuthenticationService {

  Future<bool> login(String username, String password) async {
    await Future.delayed(Duration(seconds: 3));

    final random = Random();

    return random.nextBool();
  }
}