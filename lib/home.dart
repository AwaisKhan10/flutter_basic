import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,

      /// Drawer
      ///
      drawer: const Drawer(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 60,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Faheem",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text(
                "faheem@gmail.com",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),

      ///
      /// App Bar
      ///
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "App Bar",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),

      ///
      /// Body
      ///
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "data",
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}
