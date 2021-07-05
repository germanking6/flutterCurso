import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage>{
  int contador=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:  Text('titulo'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('sumele'),
            Text('$contador')
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      bottomNavigationBar: createLowBar(),
      backgroundColor: Colors.greenAccent,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget createLowBar(){
    return Row(
      children: <Widget>[
        FloatingActionButton(child: Icon(Icons.undo_outlined),onPressed:(){setState(()=> contador--);},),
        Expanded(child: SizedBox(width:1.0)),
        FloatingActionButton(child: Icon(Icons.usb),onPressed:()=>reset(),),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.trending_flat),onPressed:(){setState(() {contador++;});}),          
      ],);
  }

  void reset(){
    setState(() {
      contador=0;
    });
  }
}

