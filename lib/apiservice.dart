import 'dart:developer';

import 'package:api_example/constants.dart';
import 'package:api_example/resource.dart';
import 'package:http/http.dart' as http;


class ApiService {
  Future<Resource?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        Resource? _model = resourceFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
