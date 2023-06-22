import 'package:flutter/material.dart';
import 'screen/tab_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yooo",
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 133, 111, 190),
        canvasColor: Color.fromARGB(255, 224, 216, 204),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ).copyWith(
          secondary: Colors.blue,
        ),
      ),
      home: const TabScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
