import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class EncryptionService {
  static const _storage = FlutterSecureStorage();

  /// Store sensitive data securely
  static Future<void> storeSecurely(String key, String value) async {
    try {
      await _storage.write(key: key, value: value);
    } catch (e) {
      print('Error storing secure data: $e');
      rethrow;
    }
  }

  /// Retrieve sensitive data
  static Future<String?> getSecure(String key) async {
    try {
      return await _storage.read(key: key);
    } catch (e) {
      print('Error retrieving secure data: $e');
      return null;
    }
  }

  /// Delete sensitive data
  static Future<void> deleteSecure(String key) async {
    try {
      await _storage.delete(key: key);
    } catch (e) {
      print('Error deleting secure data: $e');
      rethrow;
    }
  }

  /// Clear all stored data on logout
  static Future<void> clearAll() async {
    try {
      await _storage.deleteAll();
    } catch (e) {
      print('Error clearing secure storage: $e');
      rethrow;
    }
  }
}
