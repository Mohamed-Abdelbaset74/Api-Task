
import 'package:apitask/Services/News%20Services.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Models/ArticalModel.dart';
import 'cardnews.dart';

class NewsBulider extends StatefulWidget {
  const NewsBulider({super.key});

  @override
  State<NewsBulider> createState() => _NewsBuliderState();
}

class _NewsBuliderState extends State<NewsBulider> {

  List<AtricalModel> Articles = [];
   var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewService(Dio()).getNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AtricalModel>>(
        future: future,
        builder: (context,snapshot) {
          if(snapshot.hasData ) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context,i){
                  return  CardNews(Articles: snapshot.data![i],);
                }
            );
          } else if (snapshot.hasError){

            return const Center(
              child: Text("Loading",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: "BowlbyOne",
                ),),
            );
          }
          else{
            return Center(child: const CircularProgressIndicator());
          }

        });
  }
}
