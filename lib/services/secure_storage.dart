import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageHandler {
  final _storage = const FlutterSecureStorage();

  ///Key for the token storage.
  final String _ktokenPrefs = "token";

  /// ------------------------------------------------------------
  /// Method that returns the token
  /// ------------------------------------------------------------
  Future<String?> getToken() async {
    return await _storage
        .read(key: _ktokenPrefs)
        .onError((error, stackTrace) => null);
  }

  /// ----------------------------------------------------------
  /// Method that saves the token
  /// ----------------------------------------------------------
  Future<void> setToken(String token) async {
    await _storage.write(key: _ktokenPrefs, value: token);
  }
}
