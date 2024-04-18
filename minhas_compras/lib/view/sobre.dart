import 'package:flutter/material.dart';

class sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre o Projeto'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sobre o Projeto",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informações do Desenvolvedor:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nome: Darcy Neto',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Fatec Ribeirão Preto',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Descrição do Projeto:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Projeto avaliativo da disciplina de Programação para Dispositivos Móveis',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Material(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        'login',
                      );
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Center(
                        child: Text(
                          "Voltar",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
