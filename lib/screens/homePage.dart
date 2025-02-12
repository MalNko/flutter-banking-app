import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushNamed(context, '/notifications'); // ✅ Navigates to Notifications
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildAccountSummary(),
          const SizedBox(height: 16),
          _buildFinancialBehaviors(context),
          const SizedBox(height: 16),
          _buildSharedRewards(),
        ],
      ),
    );
  }

  Widget _buildAccountSummary() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Bank Portfolio', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Black Suite', style: TextStyle(fontSize: 16, color: Colors.grey)),
                Icon(Icons.credit_card, color: Colors.blueAccent),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'R 240,000.00',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const Text('Your available balance', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 16),
            Row(
              children: const [
                Icon(Icons.star, color: Colors.orange),
                SizedBox(width: 8),
                Text('40,000 Discovery Miles balance'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFinancialBehaviors(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Financial Behaviors', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildBehaviorIcon(context, Icons.receipt, 'Debt', '/debt'),         // ✅ Navigates to Debt Page
                _buildBehaviorIcon(context, Icons.shield, 'Insurance', '/insurance'), // ✅ Navigates to Insurance Page
                _buildBehaviorIcon(context, Icons.house, 'Property', '/property'),   // ✅ Navigates to Property Page
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSharedRewards() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Shared-Value Rewards', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildRewardCard('7%', 'Borrowing Rate'),
                _buildRewardCard('2%', 'Positive Balances'),
                _buildRewardCard('7%', 'Savings Accounts'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBehaviorIcon(BuildContext context, IconData icon, String label, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route); // ✅ Navigates to the assigned route
      },
      child: Column(
        children: [
          Icon(icon, size: 32, color: Colors.blueAccent),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  Widget _buildRewardCard(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueAccent),
        ),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
