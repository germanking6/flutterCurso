import 'package:flutter/material.dart';

import 'package:easyapp/src/providers/menu_provider.dart';

import 'package:easyapp/src/utils/icono_string.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['1', '2', '3', '4', '5', '6'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hola bb'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _crearItemsCorta(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _crearItemsCorta(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];

    if (data != null)
      data.forEach((element) {
        String ic = element['icon'];
        final widgetTemp = ListTile(
          title: Text(element['texto']),
          leading: getIcon(element['icon']),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            /*final route =MaterialPageRoute(
            builder: (context){
              return AlertPage();
            }
          ) ;
          Navigator.push(context, route);*/
            Navigator.pushNamed(context, element['ruta']);
          },
        );

        opciones..add(widgetTemp)..add(Divider());
      });

    return opciones;
  }
}
