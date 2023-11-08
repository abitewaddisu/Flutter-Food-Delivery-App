import 'package:flutter/material.dart';
import './Home.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/starter-image.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                stops: [0.1, 1],
                colors: [
                  Colors.black87,
                  Colors.black12
                ]
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Taking Order For Faster Delivery', style: TextStyle(color: Colors.white, fontSize: 52, fontFamily: 'Roboto', fontWeight: FontWeight.bold)),
                  SizedBox(height: 40),
                  Text('See restaurants nearby', style: TextStyle(color: Colors.white70, fontSize: 18)),
                  Text('adding your location', style: TextStyle(color: Colors.white70, fontSize: 18)),
                  SizedBox(height: 60),
                  Container(
                    width: size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.2, 0.9],
                        colors: [Colors.yellow, Colors.orange]
                      )
                    ),
                    child: TextButton(
                      onPressed: () => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Home()), (route) => false),
                      child: Text('Start', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.transparent)
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Text('Now Deliver To Your Door 24/7', style: TextStyle(color: Colors.white70), textAlign: TextAlign.center),
                  )
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}