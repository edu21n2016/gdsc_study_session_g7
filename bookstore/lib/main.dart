import 'package:flutter/material.dart';

void main() {
  runApp(BookStoreApp());
}

class BookStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookStorePage(),
    );
  }
}

class BookStorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                
              },
            ),
            Text(
              'Book Store',
              style: TextStyle(
                fontFamily: 'CustomFont',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.blue),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Looking for a book',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.clear, color: Colors.blue),
              onPressed: () {
              
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/bookstore.png', width: 200),
            SizedBox(height: 16),
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.favorite),
                SizedBox(width: 8),
                Text('Health'),
                SizedBox(width: 16),
                Icon(Icons.search),
                SizedBox(width: 8),
                Text('Science'),
                SizedBox(width: 16),
                Icon(Icons.book),
                SizedBox(width: 8),
                Text('History'),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'RECOMMENDATIONS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset('assets/book1.png', width: 100),
                  SizedBox(width: 16),
                  Image.asset('assets/book2.png', width: 100),
                  SizedBox(width: 16),
                  Image.asset('assets/book3.png', width: 100),
                ],
              ),
            ),
            SizedBox(height: 32),
            Text(
              'NEW',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset('assets/book4.png', width: 100),
                  SizedBox(width: 16),
                  Image.asset('assets/book5.png', width: 100),
                  SizedBox(width: 16),
                  Image.asset('assets/book2.png', width: 100),
                ],
              ),
            ),
            SizedBox(height: 32),
            Text(
              'TRENDING',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset('assets/book1.png', width: 100),
                  SizedBox(width: 16),
                  Image.asset('assets/book2.png', width: 100),
                  SizedBox(width: 16),
                  Image.asset('assets/book3.png', width: 100),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.book),
              onPressed: () {
                
              },
            ),
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
              
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
            
              },
            ),
          ],
        ),
      ),
    );
  }
}