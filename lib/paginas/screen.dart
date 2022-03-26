import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then(
      (_) => Navigator.of(context).pushReplacementNamed('/login'),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFFFFFFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 60,
              ),
            ),
            Center(
              child: Text('Bem vindo ao HERO!',
              style:GoogleFonts.goldman(
                color: Color(0xFFCB66D9),
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
             ),
            ),
            SizedBox(height: 40.0,),
            Image.asset('images/hero.png'),
            SizedBox(height: 30.0),
            Center(
              child: CircularProgressIndicator(
                color: Color(0xFFCB66D9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}