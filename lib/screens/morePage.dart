import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Options'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildOptionItem(Icons.settings, 'Settings', Colors.orangeAccent),
          const SizedBox(height: 16),
          _buildOptionItem(Icons.support, 'Help & Support', Colors.deepOrangeAccent),
          const SizedBox(height: 16),
          _buildOptionItem(Icons.info, 'About Us', Colors.amberAccent),
        ],
      ),
    );
  }

  Widget _buildOptionItem(IconData icon, String label, Color color) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 4,
      child: ListTile(
        leading: Icon(icon, color: color, size: 32),
        title: Text(
          label,
          style: TextStyle(fontSize: 18, color: color),
        ),
        onTap: () {
          // Action for each option
        },
      ),
    );
  }
}
