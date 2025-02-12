import 'package:flutter/material.dart';

class DebtPage extends StatelessWidget {
  const DebtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Debt Management')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Debts',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Debt List
            Card(
              child: ListTile(
                title: const Text('Student Loan'),
                subtitle: const Text('Outstanding: R 120,000.00'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to details
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Car Loan'),
                subtitle: const Text('Outstanding: R 85,000.00'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to details
                },
              ),
            ),

            const SizedBox(height: 20),

            // Debt Calculator Section
            const Text(
              'Debt Repayment Calculator',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Open debt calculator page
              },
              child: const Text('Calculate Repayments'),
            ),
          ],
        ),
      ),
    );
  }
}
