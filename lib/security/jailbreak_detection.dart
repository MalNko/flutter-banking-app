import 'package:flutter/services.dart';

class JailbreakDetectionService {
  static const platform = MethodChannel('com.banking.app/security');

  /// Detect if device is jailbroken/rooted
  static Future<bool> isDeviceJailbroken() async {
    try {
      final bool result = await platform.invokeMethod('isJailbroken');
      return result;
    } catch (e) {
      print('Error detecting jailbreak: $e');
      return true; // Assume jailbroken on error for security
    }
  }

  /// Detect if running in emulator
  static Future<bool> isRunningInEmulator() async {
    try {
      final bool result = await platform.invokeMethod('isEmulator');
      return result;
    } catch (e) {
      print('Error detecting emulator: $e');
      return false;
    }
  }

  /// Comprehensive device security check
  static Future<bool> isDeviceSecure() async {
    final jailbroken = await isDeviceJailbroken();
    final emulator = await isRunningInEmulator();
    return !jailbroken && !emulator;
  }
}
