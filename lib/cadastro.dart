import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formKey;
    var nome = TextEditingController();
    var email2 = TextEditingController();
    var senha2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Row(
              children: const [
                Icon(Icons.sports_martial_arts),
                Text('Cadastrar novo usuário'),
              ],
            ),
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
                    height: 10,
                  ),
                  campoTexto('Apelido', nome),
                  const SizedBox(height: 15),                 
                  campoTexto('Email', email2),
                  const SizedBox(height: 15),
                  campoTexto('Senha', senha2),
                  const SizedBox(height: 15,),
                  
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Voltar!'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 21, 78, 107),
                    ),
                  ),
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//
//CAMPO DE TEXTO
//
campoTexto(rotulo, variavel) {
  return TextFormField(
    //variavel associada:
    controller: variavel,
    style: const TextStyle(
      fontSize: 15,
      color: Color.fromARGB(255, 21, 78, 107),
    ),
    decoration: InputDecoration(
      labelText: rotulo,
      labelStyle: const TextStyle(fontSize: 15, color: Colors.black87),
      //hintText: 'Informe o Dado',
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.horizontal(),
      ),
    ),
  );
}
