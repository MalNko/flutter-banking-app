import 'package:flutter/material.dart';

class PropertyPage extends StatelessWidget {
  const PropertyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Property Overview')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Owned Properties',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Property List
            Card(
              child: ListTile(
                title: const Text('House in Cape Town'),
                subtitle: const Text('Market Value: R 2,500,000'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to details
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Apartment in Sandton'),
                subtitle: const Text('Market Value: R 1,800,000'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to details
                },
              ),
            ),

            const SizedBox(height: 20),

            // Property Investment Simulation
            ElevatedButton(
              onPressed: () {
                // Open investment calculator page
              },
              child: const Text('Simulate Property Investment'),
            ),
          ],
        ),
      ),
    );
  }
}
