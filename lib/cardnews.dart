
import 'package:flutter/material.dart';

import 'Models/ArticalModel.dart';

class CardNews extends StatelessWidget {
  const CardNews({super.key, required this.Articles});

  final AtricalModel Articles;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),

                child: Container(
                  child:Image.network(Articles.Image,
                    width: double.infinity,
                    height: 230,
                    fit: BoxFit.fill,

                ),

              ),
                 ),
            ),




            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(Articles.Title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: "BowlbyOne",
                ),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(Articles.Subtitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  fontFamily: "BowlbyOne",
                ),
              ),
            ),

          ],
        ),
      ),

    );

  }
}


