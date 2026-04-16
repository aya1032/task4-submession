import 'package:cat_task_4/call_data.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
           children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Color(0xFF075E54),
            radius: 25,
            child: Icon(Icons.link,color: Colors.white,),
          ),
          title: Text('Create call link'),
          subtitle: Text('share a link for your WhatsApp call'),
        ),
        SizedBox(height: 10,),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text('Recent',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
          ),
          ),
          
        ),
        SizedBox(height: 5),

        // List
        Expanded(
          child: ListView.builder(
            itemCount: calls.length,
            itemBuilder: (context, index) {
              final call = calls[index];

              return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(call.image),
                ),

                title: Text(
                  call.name,
                  style: TextStyle(
                    color: call.ismissed ? Colors.red : Colors.black,
                  ),
                ),

                subtitle: Row(
                  children: [
                    Icon(
                      call.ismissed
                          ? Icons.call_received
                          : Icons.call_made,
                      size: 16,
                      color: call.ismissed
                          ? Colors.red
                          : Colors.green,
                    ),
                    SizedBox(width: 5),
                    Text(call.time),
                  ],
                ),

                trailing: Icon(
                  call.isvideo ? Icons.videocam : Icons.call,
                  color: Colors.green,
                ),
              );
            },
          ),
        ),
      
      ],
        ),
    
    
    
    Positioned(
        bottom: 50,
        right: 20,
        child: Column(
          children: [

            FloatingActionButton(
              heroTag: "edit",
              mini: true,
              backgroundColor: Colors.green,
              onPressed: () {},
              child: Icon(Icons.add_call, color: Colors.white,),
            )
        
        ]
        )
    )
      ]
    );
    
    


        
      
    
     


    
  }
}