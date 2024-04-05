import 'package:atm/views/cliente.dart';
import 'package:atm/views/contato.dart';
import 'package:atm/views/empresa.dart';
import 'package:atm/views/servico.dart';
import 'package:flutter/material.dart';

class HomeAtm extends StatefulWidget {
  const HomeAtm({super.key});

  @override
  State<HomeAtm> createState() => _HomeAtmState();
}

class _HomeAtmState extends State<HomeAtm> {

    void abrirCliente(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Cliente() ));
  }
    void abrirContato(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Contato() ));
  }

    void abrirEmpresa(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Empresa() ));
  }
    void abrirServico(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Servico() ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Consultoria ATM"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("imagens/logo.png"),
            SizedBox(
              width: 34,
            ),

                        SizedBox(
              height: 34,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(child:Image.asset("imagens/menu_servico.png"), onTap: abrirServico,),
                SizedBox(
              width: 34,
              ),
                
                GestureDetector(child:Image.asset("imagens/menu_empresa.png"), onTap: abrirEmpresa),
              ],
            ),

            SizedBox(
              height: 34,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              GestureDetector(child:Image.asset("imagens/menu_cliente.png"), onTap: abrirCliente),
                    SizedBox(
              width: 34,
              ),
              GestureDetector(child:Image.asset("imagens/menu_contato.png"), onTap: abrirContato),
            ],
            ),
          ],
        )
      ),
    );
  }
}