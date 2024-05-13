import 'package:flutter/material.dart';
import 'package:healthylife/pages/perfil_page.dart';
import 'package:healthylife/shared/temas_padrao.dart';

class AtualizarPerfilPage extends StatefulWidget {
  const AtualizarPerfilPage({super.key});

  @override
  State<AtualizarPerfilPage> createState() => _AtualizarPerfilPageState();
}

class _AtualizarPerfilPageState extends State<AtualizarPerfilPage> {
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
              padding: const EdgeInsets.only(top: 35, right: 280),
              child: Text(
                "Atualizar Perfil",
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

                Padding(
                padding: const EdgeInsets.only(top: 1),
                child: Container(
                  width: 450,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.green, // Cor da borda
                      width: 1, // Largura da borda
                    ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerLeft, // Para centralizar o conteúdo
                  child: Center(
                    child: Text(
                      'Elron Dantas',
                      textAlign: TextAlign.center, // Alinhamento do texto
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Padroes().verde,
                      ),
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

                Padding(
                padding: const EdgeInsets.only(top: 1),
                child: Container(
                  width: 450,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.green, // Cor da borda
                      width: 1, // Largura da borda
                    ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerLeft, // Para centralizar o conteúdo
                  child: Center(
                    child: Text(
                      'erlon@gmail.com',
                      textAlign: TextAlign.center, // Alinhamento do texto
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Padroes().verde,
                      ),
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
              
              Padding(
                padding: const EdgeInsets.only(top: 1),
                child: Container(
                  width: 450,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.green, // Cor da borda
                      width: 1, // Largura da borda
                    ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerLeft, // Para centralizar o conteúdo
                  child: Center(
                    child: Text(
                      '(83) 99926-9087',
                      textAlign: TextAlign.center, // Alinhamento do texto
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Padroes().verde,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
              padding: const EdgeInsets.only(top: 100, right: 10),
              child: Align(
                alignment: Alignment.bottomRight,
                child: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PerfilPage()));
                }, 
                icon: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.green, // Cor da borda
                      width: 1, // Largura da borda
                    ),

                  ),
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.save_outlined,
                    color: Padroes().verde,
                  ),
                ),
               ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}