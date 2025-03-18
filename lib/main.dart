import 'package:env_setup/api_config.dart';
import 'package:env_setup/model/api_base_model.dart';
import 'package:flutter/material.dart';

void main({String? env}) async {
  final appConfig = await AppConfig().forEnvironment(env);
  runApp(MyApp(config: appConfig));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.config});
  final ApiBaseModel config;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
