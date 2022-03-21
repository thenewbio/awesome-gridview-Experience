import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Scaffold(
            appBar: AppBar(
              title: Text('All Video Download'),
              centerTitle: true,
              elevation: 0,
            ),
            body: GridView.builder(
                itemCount: options.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
                // ignore: missing_return
                itemBuilder: (BuildContext context, int index) => GridOptions(
                      layout: options[index],
                    ))),
      ),
    );
  }

  void changeScreen() {
    int index = options.length;
    switch (index) {
      case 0:
        print('object0');
        break;
      case 1:
        print('object1');
        break;
      case 2:
        print('object2');
        break;
      case 3:
        print('object3');
        break;
      default:
    }
  }
}

class RandomColor {
  Random random = Random();
  Color getColor() {
    return Color.fromARGB(random.nextInt(255), random.nextInt(255),
        random.nextInt(255), random.nextInt(255));
  }
}

class GridLayout {
  final String title;
  final String image;

  GridLayout({this.title, this.image});
}

List<GridLayout> options = [
  GridLayout(title: 'whatsApp', image: 'assets/images/wha.jpg'),
  GridLayout(title: 'YouTube', image: 'assets/images/you.jpg'),
  GridLayout(title: 'TikTok', image: 'assets/images/tik.png'),
  GridLayout(title: 'Instagram', image: 'assets/images/ins.jpg'),
  GridLayout(title: 'faceBook', image: 'assets/images/download.png'),
];

class GridOptions extends StatelessWidget {
  final GridLayout layout;
  GridOptions({this.layout});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: RandomColor().getColor(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                layout.image,
              ),
            ),
            Text(
              layout.title,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
