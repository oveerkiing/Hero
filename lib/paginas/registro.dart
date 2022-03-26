import 'package:flutter/material.dart';
import 'package:hero/paginas/homepage.dart';
import 'package:hero/paginas/login.dart';

class Registro extends StatefulWidget {
  const Registro({ Key? key }) : super(key: key);

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Material(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text('Seja um HERO!',
                      style:TextStyle(
                       color:Color(0xFFB155D9),
                       fontWeight: FontWeight.bold,
                       fontSize: 24,
                     ),
                    ),
                           ),
                  ],
                ),
              ),
              Expanded(
                child: TextFormField(     
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.purple,
                    ),
                  hintText: 'Nome Completo',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color:Color(0xFF563973),
                    fontStyle: FontStyle.italic,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:Color(0xFF563973),
                    ),
                  ),
                ),
                          ),
              ),
            Expanded(
              child: TextFormField( 
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.purple,
                    ),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color:Color(0xFF563973),
                    fontStyle: FontStyle.italic,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:Color(0xFF563973),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextFormField( 
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.purple,
                    ),
                  hintText: 'Telefone',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color:Color(0xFF563973),
                    fontStyle: FontStyle.italic,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:Color(0xFF563973),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextFormField( 
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.purple,
                    ),
                  hintText: 'Senha',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color:Color(0xFF563973),
                    fontStyle: FontStyle.italic,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:Color(0xFF563973),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextFormField( 
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.purple,
                    ),
                  hintText: 'Confirme sua senha',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color:Color(0xFF563973),
                    fontStyle: FontStyle.italic,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:Color(0xFF563973),
                    ),
                  ),
                ),
              ),
            ),
            FlatButton(
                      onPressed: (){
                        setState(() {
                           Navigator.push(context,MaterialPageRoute(
                            builder: (context)=> LoginPage()),
                            );
                        });
                      },
                  child: Text(
                      'Registrar',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                   color: Color(0xFFB155D9),
                  ),
            ],
          ),
        ),
      ),
    );
      
  
  }
}