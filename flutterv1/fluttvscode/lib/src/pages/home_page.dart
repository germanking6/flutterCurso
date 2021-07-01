
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final int numero =3;

  final conteo = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:  Text('titulo'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('s'),
            Text('')
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      bottomNavigationBar: Text('nice'),
      backgroundColor: Colors.greenAccent,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_alarm),
        onPressed:()=>print('hola')
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}