import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: const Icon(Icons.notifications, color: Colors.blueAccent),
            title: const Text('Notification Preferences'),
            onTap: () {
              // Navigate to Notification Preferences
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.security, color: Colors.blueAccent),
            title: const Text('Security'),
            onTap: () {
              // Navigate to Security Settings
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.help_outline, color: Colors.blueAccent),
            title: const Text('Help & Support'),
            onTap: () {
              // Navigate to Help & Support
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info_outline, color: Colors.blueAccent),
            title: const Text('About App'),
            onTap: () {
              // Navigate to About App
            },
          ),
        ],
      ),
    );
  }
}
