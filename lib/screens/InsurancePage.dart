import 'package:flutter/material.dart';

class InsurancePage extends StatelessWidget {
  const InsurancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Insurance Overview')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Active Policies',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Insurance List
            Card(
              child: ListTile(
                title: const Text('Life Insurance'),
                subtitle: const Text('Coverage: R 1,000,000 | Premium: R 1,500/mo'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to details
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Car Insurance'),
                subtitle: const Text('Coverage: R 500,000 | Premium: R 750/mo'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to details
                },
              ),
            ),

            const SizedBox(height: 20),

            // Apply for new insurance
            ElevatedButton(
              onPressed: () {
                // Open insurance application page
              },
              child: const Text('Apply for Insurance'),
            ),
          ],
        ),
      ),
    );
  }
}
