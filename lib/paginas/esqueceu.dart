import 'package:flutter/material.dart';

class EsqueceuSenha extends StatefulWidget {
  const EsqueceuSenha({ Key? key }) : super(key: key);

  @override
  State<EsqueceuSenha> createState() => _EsqueceuSenhaState();
}

class _EsqueceuSenhaState extends State<EsqueceuSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child:Text(
                'Esquece sua senha?',
                style: TextStyle(
                  color:Color(0xFFB155D9),
                   fontSize: 26,
                   fontStyle: FontStyle.italic,
                ),
             ),
           ),
           SizedBox(height: 20),
           Center(
             child: Text(
               'Digite seu e-mail e mandaremos um formulário para ocorrer sua troca de senha. Lembre de conferir na lixeira e na pasta de Spam.',
               style: TextStyle(
                 color:Color(0xFF563973),
                 fontSize: 12,
               ),
             ),
           ),
           SizedBox(height: 20),
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
            SizedBox(height: 20),
            FlatButton(
              onPressed: (){}, 
              child: Text(
                'Enviar',
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
    );
      
    
  }
}