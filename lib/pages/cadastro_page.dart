import 'package:flutter/material.dart';
import 'package:healthylife/pages/menu_page.dart';
import 'package:healthylife/shared/temas_padrao.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _telefoneController = TextEditingController();
  TextEditingController _nomeController = TextEditingController();

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
                    fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 420),
              child: Text(
                'Nome',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Padroes().verde),
              ),
            ),
            SizedBox(
              width: 450,
              height: 48,
              child: TextField(
                controller: _nomeController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.abc,
                    color: Padroes().verde,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Padroes().verde)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 420),
              child: Text(
                'Email',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Padroes().verde),
              ),
            ),
            SizedBox(
              width: 450,
              height: 48,
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.alternate_email_rounded,
                    color: Padroes().verde,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 409),
              child: Text(
                'Telefone',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Padroes().verde),
              ),
            ),
            SizedBox(
              width: 450,
              height: 48,
              child: TextField(
                controller: _telefoneController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.call,
                    color: Padroes().verde,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 410),
              child: Text(
                'Senha',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Padroes().verde),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: SizedBox(
                width: 450,
                height: 48,
                child: TextField(
                  controller: _senhaController,
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
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();

                  prefs.setString('email', _emailController.text);
                  prefs.setString('senha', _senhaController.text);
                  prefs.setString('telefone', _telefoneController.text);
                  prefs.setString('nome', _nomeController.text);

                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MenuPage()));
                } catch (Exception) {}
              },
              child: Text(
                "Criar Conta",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Padroes().verde),
              ),
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.green, width: 2))),
                fixedSize: MaterialStateProperty.all(
                  Size(200, 60),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
