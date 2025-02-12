import 'package:flutter/material.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accounts'),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Accounts',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 16),
            _buildAccountCard(
              context: context,
              title: 'Savings Account',
              accountNumber: '1234 5678 9876 5432',
              balance: 'R 50,000.00',
              icon: Icons.savings,
              gradientColors: [Colors.blue, Colors.lightBlueAccent],
              section: 'Savings',
            ),
            const SizedBox(height: 16),
            _buildAccountCard(
              context: context,
              title: 'Checking Account',
              accountNumber: '1234 5678 8765 4321',
              balance: 'R 10,000.00',
              icon: Icons.account_balance,
              gradientColors: [Colors.green, Colors.lightGreenAccent],
              section: 'Checking',
            ),
            const SizedBox(height: 16),
            _buildAccountCard(
              context: context,
              title: 'Business Account',
              accountNumber: '1234 1234 5678 1234',
              balance: 'R 150,000.00',
              icon: Icons.business_center,
              gradientColors: [Colors.orange, Colors.deepOrangeAccent],
              section: 'Business',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountCard({
    required BuildContext context,
    required String title,
    required String accountNumber,
    required String balance,
    required IconData icon,
    required List<Color> gradientColors,
    required String section,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AccountDetailsPage(section: section),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: gradientColors.last.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          color: Colors.transparent,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Icon(icon, size: 32, color: gradientColors.last),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        accountNumber,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        balance,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AccountDetailsPage extends StatelessWidget {
  final String section;

  const AccountDetailsPage({required this.section, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$section Account Details'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text(
          'Details for $section Account',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
