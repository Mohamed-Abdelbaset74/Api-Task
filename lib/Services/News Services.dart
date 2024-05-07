

import 'package:dio/dio.dart';

import '../Models/ArticalModel.dart';

class NewService {
  final Dio dio;

  NewService(this.dio);


  Future<List<AtricalModel>> getNews() async
  {
    try{
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=0e9a6ebf29c94d6fbc314f97833c9993&category=sports");


    Map<String, dynamic> jasonData = response.data;

    List<dynamic> articles = jasonData["articles"];

    List<AtricalModel> articallist = [];

    for (var artical in articles) {
      if (artical["urlToImage"] == null ||
          artical["description"] == null ||
          artical["title"] == null) {
        continue;
      } else {
        AtricalModel Model = AtricalModel(
            Image: artical["urlToImage"],
            Subtitle: artical["description"],
            Title: artical["title"]
        );

        articallist.add(Model);

      }
    }

    return articallist;

  } catch (e) {
      return [];

    }
    }

  }






