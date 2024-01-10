import 'package:flutter/material.dart';
import 'list.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'https://as1.ftcdn.net/v2/jpg/02/59/31/70/1000_F_259317013_nJJaBgGGzvXMd6cAyLd6yMJtbdnd61wk.jpg',
              width: 500,
              height: 500,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => list()),
                );
              },
              child: Text('GET STARTED'),
            ),
          ],
        ),
      ),
    );
  }
}

