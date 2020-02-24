import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //Permite ter um app bar ou uma barra de login
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: EdgeInsets.all(10),//Espaçamento de fora
        child: Center(//São os filhos
          child: Column(//Isso e basicamente o corpo da pagina, podemos fazer o nosso layout
            crossAxisAlignment: CrossAxisAlignment.stretch,//A largura da coluna tomara a largura da página
            mainAxisAlignment: MainAxisAlignment.center,//Centraliza o textos
            children: <Widget>[
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,//Só apresenta o teclado com números para o usuário
                style: new TextStyle(color:Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  labelText: "CPF",
                  labelStyle: TextStyle(color: Colors.white)),
              ),
              Divider(),//Cria uma espaco entre os doi objetos
              TextFormField(
                autofocus: false,
                obscureText: true,//Usado para "esconder" o que o usuário está digitando
                keyboardType: TextInputType.text,//Apresenta o teclado com letras e números para o usuário
                style: new TextStyle(color:Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  labelText: "CPF",
                  labelStyle: TextStyle(color: Colors.white)),
              ),
              Divider(),
              ButtonTheme(//Fornece propriedades para trabalhar com altura, largura e tamanho do botão 
                height: 60.0,//Altura do botão
                child: RaisedButton(//Não tem como alterar as propriedades de largura, altura e tamanho do botão
                  onPressed: () => {},
                  child: Text(
                    "Entrar",
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}