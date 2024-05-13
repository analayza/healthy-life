import 'package:flutter/material.dart';
import 'package:healthylife/shared/temas_padrao.dart';

class DietaViewPage extends StatefulWidget {
  const DietaViewPage({super.key});

  @override
  State<DietaViewPage> createState() => _DietaViewPageState();
}

class _DietaViewPageState extends State<DietaViewPage> {
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
                      color: Colors.green, // Cor da borda
                      width: 1, // Largura da borda
                    ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerLeft, // Para centralizar o conteúdo
                  child: Center(
                    child: Text(
                      'Café da Manhã...',
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
                padding: const EdgeInsets.all(8.0),
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
                      'Lanche 1...',
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
                padding: const EdgeInsets.all(8.0),
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
                      'Almoço...',
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
                padding: const EdgeInsets.all(8.0),
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
                      'Lanche 2...',
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
                padding: const EdgeInsets.all(8.0),
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
                      'Jantar...',
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
          ],
        ),
      ),
    );
  }
}