import 'package:flutter/material.dart';
import 'package:jp_app_material/screen2/widgets/stack_with_all_contents.dart';

class MainScreenApp extends StatefulWidget {
  const MainScreenApp({super.key});

  @override
  State<MainScreenApp> createState() => _MainScreenAppState();
}

class _MainScreenAppState extends State<MainScreenApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/hintergrunde/bg_mainscreen.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(26, 0, 0, 0),
          body: Container(
              width: 430,
              height: 900,
              color: Colors.transparent,
              child: const StackWithAllContents()),
        ),
      ),
    );
  }
}
