import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              //pinned: decide visibility of sliverappbar when user start scrollig
              pinned: true,
              //floating: decide visibility of sliverappbar when user scrolls
              floating: false,
              //Snap: ?
              snap: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Chats App",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                //background: Image.asset('images/pak.png', fit: BoxFit.cover),
              ),
              expandedHeight: 200,
              backgroundColor: Colors.greenAccent,
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
                tooltip: 'Menu',
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.comment),
                  onPressed: () {},
                  tooltip: 'Chats',
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {},
                  tooltip: 'Settings',
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    child: Text('$index'),
                  ),
                  title: Text('Friends $index'),
                  subtitle:
                      Text('Messages and calls are end to end encrypted.'),
                ),
                childCount: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
