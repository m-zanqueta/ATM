import 'package:flutter/material.dart';

class Cliente extends StatefulWidget {
  const Cliente({super.key});

  @override
  State<Cliente> createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cliente"),),
      body: Column(children: [
          Row(children: [
            Image.asset("imagens/detalhe_cliente.png"),
            Text("Clientes")
          ],),

          Padding(padding: EdgeInsets.only(top:16),
          child: Image.asset("imagens/cliente1.png"),),
          Text("Empresa de Cálculos"),

          Padding(padding: EdgeInsets.only(top:16),
          child: Image.asset("imagens/cliente2.png"),),
          Text("Empresa de Consultoria"),
        
      ],),
      
    );
  }
}