import 'package:flutter/material.dart';
import 'package:healthylife/models/dieta.dart';
import 'package:healthylife/models/usuario.dart';
import 'package:healthylife/shared/temas_padrao.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DietaViewPage extends StatefulWidget {
  const DietaViewPage({super.key});

  @override
  State<DietaViewPage> createState() => _DietaViewPageState();
}

class _DietaViewPageState extends State<DietaViewPage> {

    Dieta dieta = Dieta();

    void initState() {
    super.initState();
    _dados();
  }

  _dados() async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
          dieta.cafedamanha = prefs.getString('cafedamanha') ?? '';
          dieta.lanche1 = prefs.getString('lanche1') ?? '';
          dieta.almoco = prefs.getString('almoco') ?? '';
          dieta.lanche2 = prefs.getString('lanche2') ?? '';
          dieta.jantar = prefs.getString('jantar') ?? '';
          
      });
  }
 


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
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 450,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.green, 
                      width: 1,
                    ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerLeft, 
                  child: Center(
                    child: Text(
                      '${dieta.cafedamanha}',
                      textAlign: TextAlign.center, 
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
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 450,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.green, 
                      width: 1,
                    ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerLeft, 
                  child: Center(
                    child: Text(
                      '${dieta.lanche1}',
                      textAlign: TextAlign.center, 
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
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 450,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.green, 
                      width: 1, 
                    ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerLeft, 
                  child: Center(
                    child: Text(
                      '${dieta.almoco}',
                      textAlign: TextAlign.center, 
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
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 450,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.green, 
                      width: 1, 
                    ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerLeft, 
                  child: Center(
                    child: Text(
                      '${dieta.lanche2}',
                      textAlign: TextAlign.center, 
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
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 450,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.green, 
                      width: 1, 
                    ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerLeft, 
                  child: Center(
                    child: Text(
                      '${dieta.jantar}',
                      textAlign: TextAlign.center, 
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
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