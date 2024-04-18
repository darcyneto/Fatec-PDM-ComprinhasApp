// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:minhas_compras/model/repos_lista.dart';
import 'package:minhas_compras/model/repos_usuario.dart';
import 'package:minhas_compras/view/buscar.dart';
import 'package:minhas_compras/view/cadastrarItem.dart';
import 'package:minhas_compras/view/configuracao.dart';
import 'package:minhas_compras/view/home.dart';

class navBar extends StatefulWidget {
  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  final UserRepository userRepository = UserRepository();

  int _selectedIndex = 0;
  final ListaDeComprasRepository listaDeComprasRepository =
      ListaDeComprasRepository();

  final _screens = [
    home(),
    cadastrarItem(
        listaDeComprasRepository: ListaDeComprasRepository()), // Buscar
    buscaItem(
      listaDeComprasRepository: ListaDeComprasRepository(),
    ), // Configurações
    configuracao(userRepository: UserRepository()), // Cadastrar
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 110,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.app_registration_sharp),
              label: "Cadastrar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Buscar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Configuração",
            )
          ],
        ),
      ),
    );
  }
}
