import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer Funds'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Action to initiate fund transfer
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigoAccent,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          ),
          child: const Text(
            'Initiate Transfer',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
