import 'package:flutter/material.dart';
import 'package:healthylife/models/usuario.dart';
import 'package:healthylife/pages/clientes_page.dart';
import 'package:healthylife/pages/perfil_page.dart';
import 'package:healthylife/shared/temas_padrao.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {


    Usuario usuario = Usuario();

@override
void initState() {
  super.initState();
  _nomedousuario();
}

_nomedousuario() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      usuario.nome = prefs.getString('nome') ?? '';
    });
}
 


  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        flexibleSpace: Image.asset(Padroes().fundoAppBar, fit: BoxFit.cover),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Image.asset(
                Padroes().logo,
                width: 170,
                height: 170,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 330),
              child: Text(
                "Olá, ${usuario.nome}",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Container(
                child:  ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ClienesPage()));
                }, 
                child: Text(
                  'Meus Clientes',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                    ),
                  ),
                style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
                fixedSize: MaterialStatePropertyAll(Size(450, 48)),
                backgroundColor: MaterialStatePropertyAll(Padroes().verde2),
                  ),
                 ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                  child:  ElevatedButton(onPressed: () async{
                   await Navigator.push(context, MaterialPageRoute(builder: (context)=> PerfilPage()));
                   _nomedousuario();
                  }, 
                  child: Text(
                    'Meu Perfil',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                      ),
                    ),
                  style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
                  fixedSize: MaterialStatePropertyAll(Size(450, 48)),
                  backgroundColor: MaterialStatePropertyAll(Padroes().verde2),
                    ),
                   ),
                  ),
                ),
               ],
              ),
            )
          ],
        ),
      ),
     ),
    );
  }
}