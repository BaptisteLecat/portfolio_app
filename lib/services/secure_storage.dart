import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageHandler {
  final _storage = const FlutterSecureStorage();

  ///Key for the token storage.
  final String _ktokenPrefs = "token";

  /// ------------------------------------------------------------
  /// Method that returns the token
  /// ------------------------------------------------------------
  Future<String?> getToken() async {
    return _storage.read(key: _ktokenPrefs);
  }

  /// ----------------------------------------------------------
  /// Method that saves the token
  /// ----------------------------------------------------------
  Future<void> setToken(String token) async {
    _storage.write(key: _ktokenPrefs, value: token);
  }
}
