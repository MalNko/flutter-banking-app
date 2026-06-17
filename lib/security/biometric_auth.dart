import 'package:local_auth/local_auth.dart';
import 'encryption_service.dart';

class BiometricAuthService {
  static final LocalAuthentication auth = LocalAuthentication();

  /// Check if biometric is available
  static Future<bool> isBiometricAvailable() async {
    try {
      final isAvailable = await auth.canCheckBiometrics;
      final isDeviceSupported = await auth.isDeviceSupported();
      return isAvailable && isDeviceSupported;
    } catch (e) {
      print('Error checking biometric: $e');
      return false;
    }
  }

  /// Authenticate using biometrics
  static Future<bool> authenticate() async {
    try {
      if (!await isBiometricAvailable()) {
        return false;
      }

      final bool didAuthenticate = await auth.authenticate(
        localizedReason: 'Authenticate to access your banking account',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );

      return didAuthenticate;
    } catch (e) {
      print('Authentication error: $e');
      return false;
    }
  }

  /// Setup biometric authentication on first login
  static Future<void> setupBiometric(String userId) async {
    if (await authenticate()) {
      await EncryptionService.storeSecurely('biometric_$userId', 'enabled');
    }
  }
}
