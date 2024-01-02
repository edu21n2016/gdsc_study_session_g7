import 'package:flutter/material.dart';

class taskdetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('TASK DETAIL'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Option 1'),
                ),
                PopupMenuItem(
                  child: Text('Option 2'),
                ),
                PopupMenuItem(
                  child: Text('Option 3'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTswicz4KWeGmGqJEo5JJ5xQsY8Zr2bmMOhXzh37nGZvSCCAvRhgEiGT2sFykS3yETQFgU&usqp=CAU',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 16),
            Text(
              'Title',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: double.infinity,
              color: Colors.grey[200], // Adjust the color shade as needed
              padding: const EdgeInsets.all(16),
              child: Text(
                'UI/UX App Design',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Description',
              style: TextStyle(fontSize: 16),
            ),
            Container(
              width: double.infinity,
              color: Colors.grey[200], // Adjust the color shade as needed
              padding: const EdgeInsets.all(16),
              child: Text(
                'First, I have to animate the logo and prototype my design. It\'s very important',
                style: TextStyle(fontSize: 18, color: Colors.black,),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Deadline',
            ),
            SizedBox(height: 8),
            Container(
              width: double.infinity,
              color: Colors.grey[200], // Adjust the color shade as needed
              padding: const EdgeInsets.all(16),
              child: Text(
                'April 29, 2023',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
