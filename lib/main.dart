import 'package:flutter/material.dart';
import 'package:tokuu/screens/toku_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffFEF6DB),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff46322B),
          )
      ),
      debugShowCheckedModeBanner: false,
      home:const TokuHome() ,
    );
  }
}

