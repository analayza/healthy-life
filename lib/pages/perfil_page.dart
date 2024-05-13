import 'package:flutter/material.dart';
import 'package:healthylife/pages/atualizar_perfil_page.dart';
import 'package:healthylife/pages/atualizar_senha_page.dart';
import 'package:healthylife/shared/temas_padrao.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
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
              padding: const EdgeInsets.only(top: 35, right: 430),
              child: Text(
                "Perfil",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  color: Padroes().verde
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 30),
              child: Image.asset(
                Padroes().perfil,
                width: 100,
                height: 100,
              ),
            ),
            Padding(
                  padding: const EdgeInsets.only(right: 420, ),
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.black)
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10,right: 409,),
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
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.black)
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 80),
                child: Row(
                  children: [
                    ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AtualizarPerfilPage()));
                        }, 
                      child: Text(
                        "Editar Perfil",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                              ),
                            ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Padroes().verde,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0), side: BorderSide(color: Colors.green, width: 2)),
                          fixedSize: Size(180, 56)
                              ),
                            ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),  
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AtualizarSenhaPage()));
                              },
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Padroes().verde,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0), side: BorderSide(color: Colors.green, width: 2)),
                      fixedSize: Size(180, 56)
                          ),
                      child: Text(
                        "Mudar Senha",
                        style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                          ),
                        ),
                      ),       
                    ),
                  ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}