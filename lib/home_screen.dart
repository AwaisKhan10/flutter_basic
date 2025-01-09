import 'package:checking/core/contants/app_assets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<String> images = [
    AppAssets.profile,
    AppAssets.profile1,
    AppAssets.profile3,
    // "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
    // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_za-XgqiSjHKXHhafCQTFOOhNEKXrfE0e7Q&s",
    // "https://cdn.pixabay.com/photo/2015/04/23/22/00/new-year-background-736885_1280.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      ///
      /// Drawer
      ///
      drawer: Drawer(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 65,
                backgroundColor: Colors.red,
                child: CircleAvatar(
                  radius: 62,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.black,
                    backgroundImage:
                        AssetImage("assets/static_assets/fiver_profile.jpeg"),
                  ),
                ),
              ),
              Container(
                height: 122,
                width: 123,
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.black),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(0, 4),
                        spreadRadius: 1,
                        blurRadius: 4,
                      )
                    ]),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.white)),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Faheem",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const Text(
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
      body: ListView(
        shrinkWrap: true,
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 100,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5),
                itemBuilder: (context, index) {
                  return Card(
                    borderOnForeground: false,
                    elevation: 3.0,
                    child: Center(child: Text("Awais khan")),
                  );
                }),
          ),
          Container(
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover)),
                  );
                }),
          ),

          SizedBox(
            height: 100,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6000,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Center(child: Text("Item $index")),
                  );
                }),
          ),
          // SizedBox(
          //   height: 300,
          //   child: ListView.builder(
          //       scrollDirection: Axis.horizontal,
          //       shrinkWrap: true,
          //       itemCount: 10,
          //       // gridDelegate:
          //       //     SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          //       itemBuilder: (context, index) {
          //         return _container();
          //       }),
          // ),

          Row(
            children: [_container(), _container()],
          ),
          Row(
            children: [_container(), _container()],
          ),
          Row(
            children: [_container(), _container()],
          ),
          Row(
            children: [_container(), _container()],
          ),
          Row(
            children: [_container(), _container()],
          ),
          Row(
            children: [_container(), _container()],
          ),
          Row(
            children: [_container(), _container()],
          ),
          Row(
            children: [_container(), _container()],
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}

_container() {
  return Expanded(
    child: Container(
      margin: EdgeInsets.all(10),
      height: 200,
      width: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          // image: DecorationImage(
          //     image: AssetImage("assets/static_assets/fiver_profile.jpeg"),
          //     fit: BoxFit.cover),
          color: Colors.white,
          borderRadius: BorderRadius.circular(34),

          // border: Border.all(width: 2, color: Colors.black),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: Offset(1, 3),
              spreadRadius: 1,
              blurRadius: 6,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            AppAssets.profile3,
            fit: BoxFit.cover,
          ),
          Text("Awais khan"),
        ],
      ),
    ),
  );
}
