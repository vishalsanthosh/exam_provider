import 'package:exam_provider/provider.dart';
import 'package:exam_provider/screen1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) =>CountProvider() ,
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'Exam provider',
        theme: ThemeData(
        ),
        home:  MainScreen(),
      ),
    );
  }
}