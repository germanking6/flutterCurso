import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _mostrarAlert(context),
          child: Text('mostrar'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            shape: StadiumBorder(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.gamepad_rounded),
          onPressed: () => Navigator.pop(context)),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text('Hola'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('No le andes picando porque es solo una alerta'),
                FlutterLogo(size: 50),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('okas')),
            ],
          );
        });
  }
}
