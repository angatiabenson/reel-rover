import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_rover/features/views/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: MovieHome(),
    );
  }
}
