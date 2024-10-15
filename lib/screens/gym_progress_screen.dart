import 'package:flutter/material.dart';

class GymProgressScreen extends StatefulWidget {
  const GymProgressScreen({super.key});

  @override
  _GymProgressScreenState createState() => _GymProgressScreenState();
}

class _GymProgressScreenState extends State<GymProgressScreen> {
  String _selectedFilter = '1 Year'; // Dropdown filter option
  final List<String> _filterOptions = ['1 Year', '6 Months', '3 Months'];

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
              'Gym Progress',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            // Latest Registered Performances
            Text(
              'Latest Performances',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
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

            SizedBox(height: 30),

            // Dropdown Filter for Graph
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Progress Over Time',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                DropdownButton<String>(
                  value: _selectedFilter,
                  icon: Icon(Icons.arrow_downward),
                  items: _filterOptions.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedFilter = newValue!;
                    });
                  },
                ),
              ],
            ),

            // Placeholder for Graph (you can use a chart library for actual graphs)
            Container(
              height: 200,
              color: Colors.grey[300],
              child: Center(
                child: Text(
                  'Graph of $_selectedFilter',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ),
            ),

            SizedBox(height: 30),

            // Best Performances Section
            Text(
              'Best Performances',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.fitness_center),
              title: Text('Bench Press'),
              subtitle: Text('Best: 80kg'),
              trailing: Text('12 reps'),
            ),
            ListTile(
              leading: Icon(Icons.fitness_center),
              title: Text('Squats'),
              subtitle: Text('Best: 100kg'),
              trailing: Text('10 reps'),
            ),
            ListTile(
              leading: Icon(Icons.fitness_center),
              title: Text('Deadlift'),
              subtitle: Text('Best: 120kg'),
              trailing: Text('5 reps'),
            ),
          ],
        ),
      ),
    );
  }
}
