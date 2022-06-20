import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ponder_x/home.dart';
import 'package:ponder_x/subjects_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      // title: 'Ponder X',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => const Home(),
          binding: SubjectsBinding(),
        )
      ],
    );
  }
}
