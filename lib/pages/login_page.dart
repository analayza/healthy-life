import 'package:flutter/material.dart';
import 'package:healthylife/pages/cadastro_page.dart';
import 'package:healthylife/pages/menu_page.dart';
import 'package:healthylife/shared/temas_padrao.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                   Padding(
                     padding: const EdgeInsets.all(40.0),
                     child: Image.asset(
                      Padroes().logo,
                      width: 200,
                      height: 200,
                      ),
                   ),

                Padding(
                  padding: const EdgeInsets.only(right: 380, bottom: 35),
                  child: Text(
                    'Login',
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
                          Icons.alternate_email,
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
                
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 100),
                  child: SizedBox(
                    child: Row(
                      children: [
                          ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  CadastroPage()));
                                    }, 
                              child: Text(
                                "Criar Conta",
                                 style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                 color: Padroes().verde
                                  ),
                              ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0), side: BorderSide(color: Colors.green, width: 2)),
                            fixedSize: Size(150, 56)
                          ),
                        ),
                      Padding(
                              padding: const EdgeInsets.only(left: 30),   
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage()));
                                  },
                          style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0), side: BorderSide(color: Colors.green, width: 2)),
                          fixedSize: Size(150, 56)
                              ),
                        child: Text(
                          "Entrar",
                          style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Padroes().verde
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
             ],
            ),
          ),
        ),
   );
  }
}
