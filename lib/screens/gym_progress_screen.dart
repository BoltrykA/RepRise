import 'package:flutter/material.dart';

class GymProgressScreen extends StatelessWidget {
  const GymProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Gym Progress',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.fitness_center),
            title: Text('Bench Press'),
            subtitle: Text('3 sets of 12 reps'),
            trailing: Text('70kg'),
          ),
          ListTile(
            leading: Icon(Icons.fitness_center),
            title: Text('Squats'),
            subtitle: Text('4 sets of 10 reps'),
            trailing: Text('90kg'),
          ),
          ListTile(
            leading: Icon(Icons.fitness_center),
            title: Text('Deadlift'),
            subtitle: Text('5 sets of 5 reps'),
            trailing: Text('100kg'),
          ),
        ],
      ),
    );
  }
}
