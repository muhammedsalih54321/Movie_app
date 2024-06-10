import 'dart:convert';


import 'package:http/http.dart';
import 'package:movie_app/Repository/Api/api_client.dart';
import 'package:movie_app/Repository/ModelClass/moviemodel.dart';


class MovieApi {
  ApiClient apiClient = ApiClient();


  Future<MovieModel> getMovie() async {
    String trendingpath = 'https://netflix54.p.rapidapi.com/search/?query=stranger&offset=0&limit_titles=50&limit_suggestions=20&lang=en';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return MovieModel.fromJson(jsonDecode(response.body));
  }
}