import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  const Sobre({ Key? key }) : super(key: key);

  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
              children: const [
                Icon(Icons.sports_martial_arts),
                Text('Sobre'),
              ],
            ),
            backgroundColor:
                const Color.fromARGB(255, 8, 46, 65) //fundo do appbar
      ),
      body: Container(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child:
                Image.asset(
                  "lib/images/foto.png",
                  width: MediaQuery.of(context).size.width *0.50,
                ),
            ),
            Row(
              children: const [
                Text(
                  "Desenvolvimento: Carolina Rangel",
                  style: TextStyle(
                    fontSize: 22
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Row(
              children: const [
                 Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: "\nTema: Academia de Luta",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.justify,
                  )
                )
              ],
            ),
            Row(
              children: const [
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: "\nObjetivo:\n \nEste App tem como objetivo ajudar na administração de uma academia de lutas, contando com cadastro de alunos e lançamentos de financeiro.",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    textAlign: TextAlign.justify,
                  )
                )
              ],
            )
          ],
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        color: Colors.grey.shade100, //fundo do app
      ),
    );
  }
}