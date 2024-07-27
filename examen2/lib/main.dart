import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controladorTexto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Examen - Daniel Fuentes'),
          titleTextStyle: const TextStyle(fontSize: 15),
        ),
        body: 
        Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextField(
                  controller: controladorTexto,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () {
                        String text = controladorTexto.text;
                        if (text.endsWith('?')) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Texto'),
                                content: Text(text),
                                actions: [
                                  TextButton(
                                    child: Text('Cerrar'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}