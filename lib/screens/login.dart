import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_api/amplify_api.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  Future<void> _loginUser() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // Sign in with Cognito
      SignInResult result = await Amplify.Auth.signIn(
        username: _emailController.text,
        password: _passwordController.text,
      );

      if (result.isSignedIn) {
        print('✅ User signed in successfully');

        // Save user info to DynamoDB
        await _saveUserToDatabase();

        // Navigate to dashboard
        Navigator.pushReplacementNamed(context, '/dashboard');
      } else {
        print('⚠️ Sign-in failed');
      }
    } on AuthException catch (e) {
      print('❌ Login failed: ${e.message}');
    }

    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _saveUserToDatabase() async {
    try {
      String email = _emailController.text;

      String mutation = '''
        mutation CreateUser(\$email: String!) {
          createUser(input: {email: \$email}) {
            email
          }
        }
      ''';

      var request = GraphQLRequest<String>(
        document: mutation,
        variables: {"email": email},
      );

      var response = await Amplify.API.mutate(request: request).response;
      print('✅ User saved to DynamoDB: ${response.data}');
    } catch (e) {
      print('❌ Error saving user to DynamoDB: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Text(
                  "Log in to your account",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),

                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email or Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 16),

                _isLoading
                    ? CircularProgressIndicator()
                    : SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: _loginUser,
                    child: const Text(
                      'Log In',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),

                TextButton(
                  onPressed: () {
                    // Add forgot password functionality here
                  },
                  child: const Text("Forgot Password?"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
