import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<Widget> foods = [];
  Map foood = {
    "Chicken": {
      "title": "Chicken",
      "time": "12 min",
      "rating": "4.0",
      "energy": "730 kkal"
    },
    "Pizza": {
      "title": "Pizza",
      "time": "16 min",
      "rating": "4.8",
      "energy": "1000 kkal"
    },
    "Burger": {
      "title": "Burger",
      "time": "20 min",
      "rating": "4.8",
      "energy": "900 kkal"
    },
    "Somsa": {
      "title": "Somsa",
      "time": "10 min",
      "rating": "3.8",
      "energy": "1200 kkal"
    },
    "Lagman": {
      "title": "Lagman",
      "time": "24 min",
      "rating": "4.4",
      "energy": "1100 kkal"
    },
  };
  @override
  Widget build(BuildContext context) {
    for (var i in foood.keys) {
      foods.add(
        ListTile(
          title: Text(foood[i]['title']),
          leading: CircleAvatar(
            backgroundImage: AssetImage('image/${i}.png'),
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.access_time,
                size: 20,
                color: Colors.grey[300],
              ),
              Text(
                foood[i]['time'],
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
              Icon(
                Icons.star,
                size: 20,
                color: Colors.yellow[700],
              ),
              Text(
                foood[i]['rating'],
                style: TextStyle(
                  color: Colors.yellow[700],
                ),
              ),
              Icon(
                Icons.local_fire_department,
                size: 20,
                color: Colors.red[300],
              ),
              Text(
                foood[i]['energy'],
                style: TextStyle(
                  color: Colors.red[300],
                ),
              ),
            ],
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: foods,
        ),
      ),
    );
  }
}
