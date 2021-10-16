import 'package:flutter/material.dart';
import 'package:screens_kevao/ui/home.dart';
import 'package:transparent_image/transparent_image.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF292929),
      ),
      body: Container(
        height: 728.0,
        width: 926.0,
        color: const Color(0xFF292929),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(50.0, 250.0, 50.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 56.0,
                width: 328.0,
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: "Nome de Usuário",
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                    prefixText: "Escreva Aqui",
                    prefixStyle: TextStyle(color: Colors.white),
                  ),
                ),),
              Container(
                height: 40.0,
                width: 20.0,
              ),
              Container(
                height:56.0 ,
                width: 328.0,
                child: (
                    const TextField(
                      decoration: InputDecoration(
                          labelText: "Senha",
                          labelStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
                          prefixText: "Insira sua senha",
                          prefixStyle: TextStyle(color: Colors.white),
                          suffixIcon: Icon(Icons.visibility_outlined,
                            color: Colors.grey,)),
                    )
                ),
              ),
              const Divider(),
              Container(
                height:56.0 ,
                width: 328.0,
                child: (
                    const TextField(
                      decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
                          prefixText: "Escreva aqui",
                          prefixStyle: TextStyle(color: Colors.white),
                          ),
                    )
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 32.0, 40.0,15.0),
                  child:Container(
                    height: 39.0,
                    width: 130.0,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: (const Color(0xFF03DAC5)),
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(40.0),
                            )),
                        child: const Text('Criar',
                          style: TextStyle(color: Colors.black),
                        )) ,
                  ),
                ),
              ),
            ]),
        ),
      ),
    );
  }
}
