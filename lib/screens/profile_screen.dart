import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Profile',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Alicia'),
            subtitle: Text('Flutter Developer'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('alicia@example.com'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Account Settings'),
          ),
        ],
      ),
    );
  }
}
