import 'package:flutter/material.dart';
import 'package:movie/ui/basic_bottom_navigation_bar.dart';
import 'package:movie/ui/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        fontFamily: 'Shabnam',
        brightness: Brightness.dark,
        colorScheme: const ColorScheme(
          primary: Color(0xFF242627),
          primaryVariant: Color(0xFF070707),
          onPrimary: Colors.white,
          secondary: Colors.white,
          secondaryVariant: Color(0xFFC9C9C9),
          onSecondary: Color(0xFF131313),
          surface: Color(0xFF1B1B1B),
          onSurface: Colors.white,
          background: Color(0xFF131313),
          onBackground: Color(0xFFFEFEFE),
          error: Colors.red,
          onError: Colors.white,
          brightness: Brightness.dark,
        ),
        backgroundColor: const Color(0xFF131313),
        scaffoldBackgroundColor: const Color(0xFF131313),
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const BasicBottomNavigationBar(),
    );
  }
}