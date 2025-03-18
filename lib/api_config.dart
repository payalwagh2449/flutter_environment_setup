import 'dart:convert';
import 'package:env_setup/model/api_base_model.dart';
import 'package:flutter/services.dart';

class AppConfig {
  
  final ApiBaseModel? apiBaseUriModel;

  AppConfig({this.apiBaseUriModel});

  Future<ApiBaseModel> forEnvironment(String? env) async {
    env = env ?? 'dev';

    final contents = await rootBundle.loadString('assets/env/$env.json');

    final decodeJson = json.decode(contents);
    return ApiBaseModel.fromJson(decodeJson);
  }

}
