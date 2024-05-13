import 'package:flutter/material.dart';
import 'package:healthylife/pages/dieta_visualizar_page.dart';
import 'package:healthylife/shared/temas_padrao.dart';

class DietaPage extends StatefulWidget {
  const DietaPage({super.key});

  @override
  State<DietaPage> createState() => _DietaPageState();
}

class _DietaPageState extends State<DietaPage> {
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
                  padding: const EdgeInsets.only(right: 380, top: 100),
                  child: Text(
                    'Dieta',
                    style: TextStyle(
                      color: Padroes().verde,
                      fontSize: 30,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
                
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                      width: 450,
                      height: 48,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Café da Manhã',
                          hintStyle: TextStyle(color: Padroes().verde),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Padroes().verde)
                          ),
                        ),
                      ),
                    ),
            ),

              Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                      width: 450,
                      height: 48,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Lanche 1',
                          hintStyle: TextStyle(color: Padroes().verde),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Padroes().verde)
                          ),
                        ),
                      ),
                    ),
                  ), 

              Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                      width: 450,
                      height: 48,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Almoço',
                          hintStyle: TextStyle(color: Padroes().verde),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Padroes().verde)
                          ),
                        ),
                      ),
                    ),
            ),

              Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                      width: 450,
                      height: 48,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Lanche 2',
                          hintStyle: TextStyle(color: Padroes().verde),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Padroes().verde)
                          ),
                        ),
                      ),
                    ),
            ),  
              Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                      width: 450,
                      height: 48,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Jantar',
                          hintStyle: TextStyle(color: Padroes().verde),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Padroes().verde)
                          ),
                        ),
                      ),
                    ),
            ), 

            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  DietaViewPage()));
                      }, 
                  child: Text(
                    "Salvar e Visualizar",
                    style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Padroes().verde
                        ),
                      ),
                style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: Colors.green, width: 2))),
                fixedSize: MaterialStateProperty.all(Size(300, 60),),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}