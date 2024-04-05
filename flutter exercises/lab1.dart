import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iJTracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Set app bar color to blue
        title: Text('iJTracker'),
        leading: IconButton(
          icon: Icon(Icons.help),
          onPressed: () {
            // Handle help icon press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notification icon press
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle settings icon press
            },
          ),
        ],
        centerTitle: true, // Center the title
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white, // Set row background color to white
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/supra.jpg"),
                  radius: 30, // Adjust the size of the circle avatar
                ),
                SizedBox(width: 8), // Add spacing between circle avatar and text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Robert Steven",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue, // Set text color to blue
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.car_rental, color: Colors.blue, size: 40),
                        SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue, // Set button background color to blue
                          ),
                          child: Text(
                            "B 2445 UJD | 701887875",
                            style: TextStyle(color: Colors.white), // Set text color to white
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(), // Add a spacer to push the logout text to the right
                Text(
                  "Logout",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue, // Set text color to blue
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // Add spacing between the first container and the "Online | Battery: 90%" text
          Container(
            width: double.infinity,
            color: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: Text(
                "Online | Battery: 90%",
                style: TextStyle(color: Colors.white), // Set text color to white
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(12, (index) {
                // Replace with your icons and labels
                return Center(
                  child: ActionButton(
                    icon: Icons.map, // Replace with your icon data
                    label: 'Map All Devices', // Replace with your label
                    onPressed: () {
                      // Handle button press
                    },
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const ActionButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 50),
          Text(label),
        ],
      ),
    );
  }
}