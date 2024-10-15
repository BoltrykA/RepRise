import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Header
            Text(
              'Friends / Community',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            // Friend Activity Feed
            Text(
              'Recent Activity',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),

            // Mock data for recent activities
            _buildFriendActivity(
              context,
              friendName: 'John Doe',
              activity: 'Completed a full-body workout',
              timeAgo: '2 hours ago',
              profilePic: Icons.person,
            ),
            _buildFriendActivity(
              context,
              friendName: 'Jane Smith',
              activity: 'Hit a new PR: 100kg Bench Press',
              timeAgo: '1 day ago',
              profilePic: Icons.person,
            ),
            _buildFriendActivity(
              context,
              friendName: 'Bob Johnson',
              activity: 'Ran 10km in 50 minutes',
              timeAgo: '3 days ago',
              profilePic: Icons.person,
            ),
            _buildFriendActivity(
              context,
              friendName: 'Alice Williams',
              activity: 'Completed a strength circuit workout',
              timeAgo: '4 days ago',
              profilePic: Icons.person,
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build a friend activity entry
  Widget _buildFriendActivity(
      BuildContext context, {
        required String friendName,
        required String activity,
        required String timeAgo,
        required IconData profilePic,
      }) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(profilePic),
        ),
        title: Text(friendName, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(activity),
            SizedBox(height: 4),
            Text(
              timeAgo,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        trailing: IconButton(
          icon: Icon(Icons.favorite_border),
          onPressed: () {
            // Later, you could implement a like or interaction feature
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Congratulated ${friendName}\'s activity!')),
            );
          },
        ),
      ),
    );
  }
}
