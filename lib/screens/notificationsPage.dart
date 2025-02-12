import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.blueAccent),
            title: Text('Payment received'),
            subtitle: Text('You received R5,000 from John Doe.'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.warning, color: Colors.orange),
            title: Text('Low Balance Alert'),
            subtitle: Text('Your savings account balance is below R1,000.'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.credit_card, color: Colors.green),
            title: Text('Credit Card Payment Due'),
            subtitle: Text('Your credit card payment is due on 25th Jan.'),
          ),
          Divider(),
        ],
      ),
    );
  }
}
