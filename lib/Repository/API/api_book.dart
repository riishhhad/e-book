import 'dart:convert';


import 'package:http/http.dart';



import '../Modelclass/ebook.dart';

import 'api_client.dart';




class Ebookapi {
  late Ebook ebook;
  ApiClient apiClient = ApiClient();


  Future<List<Ebook>> getbook() async {
    String trendingpath ="https://hapi-books.p.rapidapi.com/nominees/romance/2020/";
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Ebook.listFromJson(jsonDecode(response.body));
  }
}