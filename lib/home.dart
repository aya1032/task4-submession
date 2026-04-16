import 'package:cat_task_4/call_screen.dart';
import 'package:cat_task_4/status_screen.dart';
import 'package:flutter/material.dart';
import 'chats_screen.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E54),
          title: Text('WhatsApp', style: TextStyle(color: Colors.white)),
          actions: [
            Icon(Icons.camera_alt, color: Colors.white),
            SizedBox(width: 15),
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 15),
            Icon(Icons.more_vert, color: Colors.white),
            SizedBox(width: 10),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.groups)),

              
              Tab(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text("Chats"),
                    ),
                    Positioned(
                      right: 0,
                      top: 12,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          "1",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            Center(child: Text("Community")),

           
            ChatsScreen(),
            statusScreen(),
            CallScreen(),

            
            
          ],
        ),
      ),
    );
  }
}