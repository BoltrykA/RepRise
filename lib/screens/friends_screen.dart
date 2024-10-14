import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Friends / Community',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text('John Doe'),
            subtitle: Text('Last workout: 2 hours ago'),
            trailing: Icon(Icons.message),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text('Jane Smith'),
            subtitle: Text('Last workout: 1 day ago'),
            trailing: Icon(Icons.message),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text('Bob Johnson'),
            subtitle: Text('Last workout: 3 days ago'),
            trailing: Icon(Icons.message),
          ),
        ],
      ),
    );
  }
}
