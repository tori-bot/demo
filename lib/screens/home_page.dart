import 'package:flutter/material.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        title: const Text('Adventure'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      //MAIN CONTENT
      body: Container(
        child: ListView(
          children: [
            //IMAGE
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/forest.jpeg'),
                      fit: BoxFit.cover)),
            ),
            //SPACE
            const SizedBox(
              height: 20,
            ),
            //TITLE, SUBTITLE SECTION
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Forest Trail',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Mt Kenya',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  )),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 18,
                  ),
                  Text('39')
                ],
              ),
            ),
            //SPACE
            const SizedBox(
              height: 30,
            ),
            //ACTION SECTION
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //FIRST CHILD
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'CALL',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  //SECOND CHILD
                  Column(
                    children: [
                      Icon(
                        Icons.directions,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'ROUTE',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  //THIRD CHILD
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'SHARE',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //SPACE
            const SizedBox(
              height: 20,
            ),
            //PARAGRAPH SECTION
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  'The best route on Mount Kenya is The Chogoria route that approaches from the East and there is a National Forest Reserve gate near the village of Chogoria and a National Park gate further up. The route is often described as the most attractive route on Mount Kenya.'),
            ),
          ],
        ),
      ),
      //FAB
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
