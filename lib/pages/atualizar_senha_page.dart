import 'package:flutter/material.dart';
import 'package:healthylife/pages/menu_page.dart';
import 'package:healthylife/shared/temas_padrao.dart';

class AtualizarSenhaPage extends StatefulWidget {
  const AtualizarSenhaPage({super.key});

  @override
  State<AtualizarSenhaPage> createState() => _AtualizarSenhaPageState();
}

class _AtualizarSenhaPageState extends State<AtualizarSenhaPage> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
          appBar: AppBar(
        flexibleSpace: Image.asset(Padroes().fundoAppBar, fit: BoxFit.cover),
        foregroundColor: Colors.white,
      ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 250, bottom: 35),
                  child: Text(
                    'Atualizar Senha',
                    style: TextStyle(
                      color: Padroes().verde,
                      fontSize: 30,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.only(right: 380),
                  child: Text(
                    'Senha Antiga',
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
                            Icons.password,
                            color: Padroes().verde,  
                          ),
                          suffixIcon: Icon(
                            Icons.visibility,
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
                  padding: const EdgeInsets.only(top: 10,right: 380),
                  child: Text(
                    'Senha Nova',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage()));
                      },
                child: Text(
                  "Salvar",
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
             )
           ],
         ),
       ),
     );
  }
}