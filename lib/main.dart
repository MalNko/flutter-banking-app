import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'models/ModelProvider.dart'; // Import the generated ModelProvider
import 'amplifyconfiguration.dart'; // Ensure this file exists
import 'screens/login.dart';
import 'screens/dashboard.dart';
import 'screens/TransferPage.dart';
import 'screens/transactions.dart';
import 'screens/settings.dart';
import 'screens/profile.dart';
import 'screens/support.dart';
import 'screens/accountsPage.dart';
import 'screens/cardsPage.dart';
import 'screens/morePage.dart';
import 'screens/debtPage.dart';
import 'screens/insurancePage.dart';
import 'screens/propertyPage.dart';
import 'screens/notificationsPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureAmplify();
  runApp(const MyApp());
}

Future<void> configureAmplify() async {
  try {
    final auth = AmplifyAuthCognito();
    final api = AmplifyAPI();
    final datastore = AmplifyDataStore(modelProvider: ModelProvider.instance);

    await Amplify.addPlugins([auth, api, datastore]);

    // Ensure amplifyconfiguration.dart is properly referenced
    await Amplify.configure(amplifyconfig);

    debugPrint('✅ Amplify configured successfully');
  } catch (e) {
    debugPrint('❌ Error configuring Amplify: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banking App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/transfer': (context) => const TransferPage(),
        '/transactions': (context) => const TransactionsScreen(section: "All"),
        '/settings': (context) => const SettingsScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/support': (context) => const SupportScreen(),
        '/accounts': (context) => const AccountsPage(),
        '/cards': (context) => const CardsPage(),
        '/more': (context) => const MorePage(),
        '/debt': (context) => const DebtPage(),
        '/insurance': (context) => const InsurancePage(),
        '/property': (context) => const PropertyPage(),
        '/notifications': (context) => const NotificationsPage(),
      },
    );
  }
}
