import 'package:flutter/material.dart';
import 'package:p1/sobre.dart';
import 'package:p1/cadastro.dart';
import 'package:p1/segundatela.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projeto v1',
      home: TelaPrincipal(),
      //initialRoute: '/tela0',
      //routes: {
      //  '/tela0':(context) => TelaPrincipal,
      //}
      
    ),
  );
}

class Imagens extends StatelessWidget {
  //atributos
  final String nome;
  final String foto;
  // ignore: use_key_in_widget_constructors
  const Imagens(this.nome, this.foto) : super();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(nome),
          Image.asset(foto),
        ],
      ),
    );
  }
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);
  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  //variaveis que serão armazenados pelo usuário quando ele digitar
  var email = TextEditingController();
  var senha = TextEditingController();

  //declaracao de um atributo que identifica unicamente o formulario
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.sports_martial_arts),
                Text('App Academia de Luta'),
              ],
            ),
            centerTitle: true,
            backgroundColor:
                const Color.fromARGB(255, 8, 46, 65) //fundo do appbar
            ),

        backgroundColor: Colors.grey.shade100, //fundo do app
        
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),

            //formulário para validação
            child: Form(
              key: formKey,
              child: Center(
                child: Column(
                  children: [
                    //AQUI ESTÃO AS 2 CAIXAS DE EMAIL E SENHA
                    const SizedBox(
                      height: 100,
                    ),
                    campoTexto('Email Login', email),
                    const SizedBox(height: 20),
                    campoTexto('Senha', senha),
                    const SizedBox(
                      height: 30,
                    ),
                    botao('Enviar'),
                    const SizedBox(
                      height: 50,
                    ),
                    botao1('Novo Cadastro'),
                    const SizedBox(
                      height: 150,
                    ),
                    botao2('Sobre nós'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

//
//CAMPO DE TEXTO
//
  campoTexto(rotulo, variavel) {
    return TextFormField(
      //variavel associada:
      controller: variavel,
      style: const TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 21, 78, 107),
      ),
      decoration: InputDecoration(
        labelText: rotulo,
        labelStyle: const TextStyle(fontSize: 18, color: Colors.black87),
        //hintText: 'Informe o Dado',
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.horizontal(),
        ),
      ),
    );
  }

//
//ELEVATE BOTAO
//
  botao(rotulo) {
    return SizedBox(
      width: 150,
      height: 50,
      child: ElevatedButton(
        //evento que será disparado quando o usuario apertar o botao
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SegundaTela(),
            ),
          );
        },

        child: Text(
          rotulo,
          style: const TextStyle(fontSize: 16),
        ),

        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 21, 78, 107),
        ),
      ),
    );
  }


//
//TEXT BOTAO
//
  botao1(rotulo) {
    return SizedBox(
      width: 200,
      height: 30,
      child: TextButton(
        //evento que será disparado quando o usuario apertar o botao
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Cadastro(),
            ),
          );
        },

        child: Text(
          rotulo,
          style: const TextStyle(fontSize: 16),
        ),

        style: TextButton.styleFrom(
            primary: const Color.fromARGB(255, 21, 78, 107)),
      ),
    );
  }
  botao2(rotulo) {
    return SizedBox(
      width: 200,
      height: 30,
      child: TextButton(
        //evento que será disparado quando o usuario apertar o botao
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Sobre(),
            ),
          );
        },

        child: Text(
          rotulo,
          style: const TextStyle(fontSize: 16),
        ),

        style: TextButton.styleFrom(
            primary: const Color.fromARGB(255, 21, 78, 107)),
      ),
    );
  }

//
//CAIXA DE DIALOGO
//
  caixaDialogo(msg) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Entrar'),
            content: Text(msg),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                      email.clear();
                      senha.clear();
                    });
                  },
                  child: const Text('fechar')),
            ],
          );
        });
  }
}


