import 'package:flutter/material.dart';
import 'package:healthylife/pages/dieta_page.dart';
import 'package:healthylife/shared/temas_padrao.dart';

class ClienesPage extends StatefulWidget {
  const ClienesPage({super.key});

  @override
  State<ClienesPage> createState() => _ClienesPageState();
}

class _ClienesPageState extends State<ClienesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.asset(Padroes().fundoAppBar, fit: BoxFit.cover),
        foregroundColor: Colors.white,
      ),
        body: Center(
        

          child: Padding(
            padding: const EdgeInsets.only(top: 160),
            child: SizedBox(
              width: 320,
              child: ListView(
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DietaPage()));
                  }, 
                  child: Row(
                    children: [
                      Image.asset(
                        Padroes().listaLogo1,
                         width: 45, 
                         height: 45,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                           'Maria Luiza',
                            style: TextStyle(
                            color: Padroes().verde,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0), side: BorderSide(color: Padroes().verde))),
                    fixedSize: MaterialStatePropertyAll(Size(450, 48)),
                    backgroundColor: MaterialStatePropertyAll(Colors.white)
                  ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(onPressed: (){}, 
                    child: Row(
                      children: [
                        Image.asset(
                          Padroes().listaLogo2,
                           width: 45, 
                           height: 45,
                        ),
                    
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                             'Auricélia ',
                              style: TextStyle(
                              color: Padroes().verde,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0), side: BorderSide(color: Padroes().verde))),
                      fixedSize: MaterialStatePropertyAll(Size(450, 48)),
                      backgroundColor: MaterialStatePropertyAll(Colors.white)
                    ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(onPressed: (){}, 
                    child: Row(
                      children: [
                        Image.asset(
                          Padroes().listaLogo3,
                           width: 45, 
                           height: 45,
                        ),
                    
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                             'José Antônio',
                              style: TextStyle(
                              color: Padroes().verde,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0), side: BorderSide(color: Padroes().verde))),
                      fixedSize: MaterialStatePropertyAll(Size(450, 48)),
                      backgroundColor: MaterialStatePropertyAll(Colors.white)
                    ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(onPressed: (){}, 
                    child: Row(
                      children: [
                        Image.asset(
                          Padroes().listaLogo4,
                           width: 45, 
                           height: 45,
                        ),
                    
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                             'Mário',
                              style: TextStyle(
                              color: Padroes().verde,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0), side: BorderSide(color: Padroes().verde))),
                      fixedSize: MaterialStatePropertyAll(Size(450, 48)),
                      backgroundColor: MaterialStatePropertyAll(Colors.white)
                    ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(onPressed: (){}, 
                    child: Row(
                      children: [
                        Image.asset(
                          Padroes().listaLogo5,
                           width: 45, 
                           height: 45,
                        ),
                    
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                             'Pedro Miguel',
                              style: TextStyle(
                              color: Padroes().verde,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0), side: BorderSide(color: Padroes().verde))),
                      fixedSize: MaterialStatePropertyAll(Size(450, 48)),
                      backgroundColor: MaterialStatePropertyAll(Colors.white)
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}