import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mhdt/videos.dart';

Future<Videos> fetchVideos() async {
  final response = await http.get(Uri.parse(''));

  if (response.statusCode == 200) {
    return Videos.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('');
  }
}
