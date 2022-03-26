import 'package:flutter/material.dart';
import 'package:hero/paginas/screen.dart';
import'package:hero/paginas/screen.dart';
import 'package:hero/paginas/login.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.goldmanTextTheme(
        Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashScreen(),
        '/login': (_) => const LoginPage(),
      },
    );
  }
}

