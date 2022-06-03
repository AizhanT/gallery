import 'dart:convert';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'model.dart';
import 'package:http/http.dart' as http;

var urlData;
Future<List<LoadData>> fetchPhotos(http.Client client) async {
  final response = await client.get(Uri.parse(
      'https://api.unsplash.com/photos/?per_page=30&client_id=896d4f52c589547b2134bd75ed48742db637fa51810b49b607e37e46ab2c0043'));

  // Use the compute function to run parsePhotos in a separate isolate.

  urlData = jsonDecode(response.body);
  return compute(parsePhotos, response.body);
}

List<LoadData> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<LoadData>((json) => LoadData.fromJson(json)).toList();
}
