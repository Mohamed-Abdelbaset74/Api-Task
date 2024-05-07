
import 'package:apitask/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Material extends StatelessWidget {
  const Material({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
