import 'package:cat_task_4/status_data.dart';
import 'package:flutter/material.dart';

class statusScreen extends StatefulWidget {
  const statusScreen({super.key});

  @override
  State<statusScreen> createState() => _statusScreen();
}

class _statusScreen extends State<statusScreen> {
  @override
  Widget build(BuildContext context) {
   
  return Stack(
    children: [

      
      Column(
        children: [

          // My Status
          ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/image.png"),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add, size: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
            title: Text("My Status"),
            subtitle: Text("Tap to add status update"),
          ),

          SizedBox(height: 10),

          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Recent Updates",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(height: 5),

          // list
          Expanded(
            child: ListView.builder(
              itemCount: status.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(status[index].image),
                  ),
                  title: Text(status[index].name),
                  subtitle: Text(status[index].time),
                );
              },
            ),
          ),
        ],
      ),

      
      Positioned(
        bottom: 20,
        right: 20,
        child: Column(
          children: [

            FloatingActionButton(
              heroTag: "edit",
              mini: true,
              backgroundColor: Colors.grey[300],
              onPressed: () {},
              child: Icon(Icons.edit, color: Colors.black),
            ),

            SizedBox(height: 10),

            FloatingActionButton(
              heroTag: "camera",
              backgroundColor: Colors.green,
              onPressed: () {},
              child: Icon(Icons.camera_alt),
            ),
          ],
        ),
      ),
    ],
  );
}
  }
