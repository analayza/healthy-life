import 'package:flutter/material.dart';
import 'package:healthylife/pages/menu_page.dart';
import 'package:healthylife/shared/temas_padrao.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.asset(Padroes().fundoAppBar, fit: BoxFit.cover),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
                  padding: const EdgeInsets.only(right: 380, top: 70, bottom: 20),
                  child: Text(
                    'Cadastro',
                    style: TextStyle(
                      color: Padroes().verde,
                      fontSize: 30,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 420),
                  child: Text(
                    'Nome',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Padroes().verde
                      ),
                  ),
                ),

              SizedBox(
                    width: 450,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.abc,
                          color: Padroes().verde,  
                        ),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Padroes().verde)
                        ),
                      ),
                    ),
                  ),

                  Padding(
                  padding: const EdgeInsets.only(top: 10,right: 420),
                  child: Text(
                    'Email',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Padroes().verde
                      ),
                  ),
                ),

        
                    SizedBox(
                    width: 450,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.alternate_email_rounded,
                          color: Padroes().verde,  
                        ),
                        
                        border: OutlineInputBorder(
                          
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.black)
                        ),
                      ),
                    ),
                  ),

                  Padding(
                  padding: const EdgeInsets.only(top: 10,right: 409),
                  child: Text(
                    'Telefone',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Padroes().verde
                      ),
                  ),
                ),

                    SizedBox(
                    width: 450,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.call,
                          color: Padroes().verde,  
                        ),
                       
                        border: OutlineInputBorder(
                          
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.black)
                        ),
                      ),
                    ),
                  ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 10,right: 410),
                  child: Text(
                    'Senha',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Padroes().verde
                      ),
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: SizedBox(
                    width: 450,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Padroes().verde,  
                        ),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Padroes().verde,  
                        ),
                        
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.black)
                        ),
                      ),
                    ),
                  ),
                ),

            ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  MenuPage()));
                    }, 
            child: Text(
              "Criar Conta",
              style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Padroes().verde
                 ),
                ),
            style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: Colors.green, width: 2))),
            fixedSize: MaterialStateProperty.all(Size(200, 60),),
             ),
            ),
          ],
        ),
      ),
    );
  }
}