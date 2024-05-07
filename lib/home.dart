
import 'package:apitask/NewsBulider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cardnews.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              children: [
                TextSpan(
                    text: "News ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "BowlbyOne",
                        color: Colors.lightBlueAccent
                    )
                ),


                TextSpan(
                    text: "App",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "BowlbyOne",
                        color: Colors.white70
                    )
                )

              ]
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),

      body: NewsBulider()
    );
  }
}
