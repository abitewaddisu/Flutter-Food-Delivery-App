import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String img;
  final bool isFav;
  const CustomCard({super.key, required this.img, this.isFav=false});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          height: constraints.maxHeight,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black87,
                  Colors.black12
                ]
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(20),
                  child: Icon(Icons.favorite, color: isFav ? Colors.red : Colors.white),
                )),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('\$ 13.00', style: TextStyle(color: Colors.white, fontFamily: 'Roboto', fontSize: 36, fontWeight: FontWeight.bold, height: 3)),
                      Text('Vegetarian Pizza', style: TextStyle(color: Colors.white, fontFamily: 'Roboto', fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ]
            ),
          ),
        );
      },
    );
  }
}