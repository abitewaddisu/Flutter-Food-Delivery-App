import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/widgets/Card.dart';
import '../widgets/Chip.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> categories = ["Pizza", "Burgers", "Kebab", "Desert", "Salad"];
  List<dynamic> foods = [
    {
      "image": "assets/images/one.jpg",
      "isFavorite": false,
    }, 
    {
      "image": "assets/images/two.jpg",
      "isFavorite": false,
    },
    {
      "image": "assets/images/three.jpg",
      "isFavorite": true,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){ }, icon: Icon(Icons.shopping_basket))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.grey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Text('Food Delivery', style: TextStyle(fontSize: 32, fontFamily: 'Roboto', fontWeight: FontWeight.bold)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(categories.length, (index) => CustomChip(label: categories[index], isActive: index==0,))
            ),
          ),
          const Text('Free Delivery', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20)),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(foods.length, (index) => CustomCard(img: foods[index]['image'], isFav: foods[index]['isFavorite'])
                )
              ),
            ),
          )
        ]
      )),
    );
  }
}