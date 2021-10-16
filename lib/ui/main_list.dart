import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF292929),
      appBar: AppBar(
          backgroundColor: const Color(0xFF292929),
          leading: const Icon(Icons.clear_outlined),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.notifications),
            ),
          ]),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
            child: Container(
                width: 150.0,
                height: 150.0,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image:
                            NetworkImage("https://i.imgur.com/BoN9kdC.png")))),
          ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Meu Nome",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 31.0,
                ),
              ),
            ],
          ),
            Container(height: 15.0),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text(
              "Meu e-mail",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            )
          ]),
            Container(height: 56.0),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Tarefas a fazer",
                  style: TextStyle(color: Colors.white, fontSize: 26.0))
            ],
          ),
             Container(height: 38.0),
             Container(
              padding:
                const EdgeInsets.only(left: 34.0, right: 34.0, bottom: 16.0),
              child: const TextField(
              decoration: InputDecoration(
                  labelText: "Subtitle 1",
                  labelStyle: TextStyle(color: Colors.white)),
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
             Container(
              padding:
                const EdgeInsets.only(left: 34.0, right: 34.0, bottom: 16.0),
               child: const TextField(
                 decoration: InputDecoration(
                  labelText: "Subtitle 2",
                  labelStyle: TextStyle(color: Colors.white)),
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
               ),
          ),
            Container(
             padding:
                const EdgeInsets.only(left: 34.0, right: 34.0, bottom: 16.0),
              child: const TextField(
              decoration: InputDecoration(
                  labelText: "Subtitle 3",
                  labelStyle: TextStyle(color: Colors.white)),
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
            Container(
              padding:
                const EdgeInsets.only(left: 34.0, right: 34.0, bottom: 16.0),
             child: const TextField(
              decoration: InputDecoration(
                  labelText: "Subtitle 4",
                  labelStyle: TextStyle(color: Colors.white)),
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
        ]),
      ),
    );
  }
}
