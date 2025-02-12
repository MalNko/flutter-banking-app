import 'package:flutter/material.dart';

class AccountDetailsPage extends StatelessWidget {
  final String section;

  AccountDetailsPage({required this.section, super.key});

  final Map<String, double> _sectionOffsets = {
    'Savings': 0,
    'Checking': 250, // Approximate Y-offset for each section
    'Business': 500,
  };

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Automatically scroll to the relevant section
      _scrollController.animateTo(
        _sectionOffsets[section] ?? 0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('$section Account Details'),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Sections for each account type
            _buildAccountSection('Savings Account', 'Details about the savings account...', Colors.blueAccent),
            const SizedBox(height: 16),
            _buildAccountSection('Checking Account', 'Details about the checking account...', Colors.green),
            const SizedBox(height: 16),
            _buildAccountSection('Business Account', 'Details about the business account...', Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountSection(String title, String content, Color color) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
