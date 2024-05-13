import 'package:flutter/material.dart';
import 'package:healthylife/pages/login_page.dart';
import 'package:healthylife/shared/temas_padrao.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
           flexibleSpace: Image.asset(Padroes().fundoAppBar, fit: BoxFit.cover),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                    Padroes().logo,
                    height: 200,
                    width: 200,
                  ),
                ),
                const Padding(
                padding:  EdgeInsets.only(top: 90),
                child:  Text(
                  textAlign: TextAlign.center,
                  "Bem-vindo(a), Obrigada\n por utilizar nosso \naplicativo",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 23,
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