import 'package:flutter/material.dart';
import 'package:screens_kevao/ui/main_list.dart';
import 'package:screens_kevao/ui/new_acc.dart';
import 'new_acc.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 728.0,
        width: 926.0,
        color: const Color(0xFF292929),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(50.0, 200.0, 50.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(
                           "https://i.imgur.com/BoN9kdC.png")
                      )
                  )),
              const Divider(),
              Container(
                height:56.0 ,
                width: 328.0,
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: "Nome de Usuário",
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                    prefixText: "Escreva Aqui",
                    prefixStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Divider(),
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 32.0, 40.0,15.0),
                child:Container(
                  height: 39.0,
                  width: 130.0,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:(context) => const ListScreen(),
                            )
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: (const Color(0xFF03DAC5)),
                        shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(40.0),
                      )),
                      child: const Text('Entrar',
                        style: TextStyle(color: Colors.black),
                      )) ,
                ),
              ),
              ),
              Center(
                  child:Container(
                    height: 39.0,
                    width: 130.0,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:(context) => const New(),
                            )
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: (const Color(0xFF03DAC5)),
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(40.0),
                            )),
                        child: const Text('Nova Conta',
                          style: TextStyle(color: Colors.black),
                        )) ,
                  ),
              )],
          ),
        ),
      ),
    );
  }
}
