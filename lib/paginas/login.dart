import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hero/paginas/esqueceu.dart';
import 'package:hero/paginas/homepage.dart';
import 'package:hero/paginas/registro.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool _mostrarSenha = false;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start, 
          mainAxisSize: MainAxisSize.max, 
          children: <Widget>[
            Expanded(
              flex: 1,
              child: 
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
              children:<Widget>[
                Text( /* logo */
                  'Hero',
                  style:TextStyle(
                    color:Color(0xFFB155D9),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
            
           Expanded(
             flex: 4,
             child:
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text( 
              'Bem-vindo ao Hero!',
              style:TextStyle(
                color: Color(0xFFB155D9),
                fontSize: 22,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height:20,),
            Text( 
              'Já tem sua conta ? Faça seu login!',
            
              style: TextStyle(
                color:Color(0xFF563973),
              ),
            ),
            SizedBox(height:20,),
            TextFormField( 
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
            SizedBox(height:20,),
            TextFormField( 
            obscureText:_mostrarSenha == false ? true : false, 
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
                suffixIcon: GestureDetector(

                  child: Icon(_mostrarSenha == false ?Icons.visibility_off : Icons.visibility, color:Colors.purple,),
                  onTap: (){
                    setState(() {
                      _mostrarSenha = ! _mostrarSenha;
                    });
                  },
                ),
              ),
            ),
          ],
         ),
        ),
            
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center, /* Botao de login */
                children: <Widget>[ 
                  FlatButton( 
                    onPressed: (){
                      setState(() {
                         Navigator.push(context,MaterialPageRoute(
                          builder: (context)=> HomePage()),
                          );
                      });
                    },
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Color(0xFFB155D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  ),
                  TextButton(
                     onPressed: (){
                        setState(() {
                           Navigator.push(context,MaterialPageRoute(
                            builder: (context)=> EsqueceuSenha()),
                            );
                        });
                      },
                  child: Text(
                    'Esqueceu a senha ?', /* Esqueceu a senha */
                    style: TextStyle(
                      color:Color(0xFF563973),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                   ),
                  ),
                 ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column( 
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Ainda não é cadastrado ?',
                        style: TextStyle(
                          color:Color(0xFF563973),
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                        ),
                        ),
                    ),
                     FlatButton(
                      onPressed: (){
                        setState(() {
                           Navigator.push(context,MaterialPageRoute(
                            builder: (context)=> Registro()),
                            );
                        });
                      },
                    child: Container(
                      child: Text(
                          'Registre-se',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                    ),
                  
                   color: Color(0xFFB155D9),
                  ),
                    
                      
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}