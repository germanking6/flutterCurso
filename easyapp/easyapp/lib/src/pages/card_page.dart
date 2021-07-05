import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [_cardTipo1(), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
        child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('No se que escribir'),
          subtitle: Text('lorem impsum equis d'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(onPressed: () {}, child: Text('hola')),
            TextButton(onPressed: () {}, child: Text('cancelar'))
          ],
        )
      ],
    ));
  }

  Widget _cardTipo2() {
    final card = Container(
        child: Column(
      children: <Widget>[
        FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://media.discordapp.net/attachments/711333003149967490/860949974379397150/rwas7xi8jid41.png?width=711&height=676'),
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover),
        /*Image(
        image: NetworkImage(
            'https://media.discordapp.net/attachments/711333003149967490/860949907330170900/51M8TE4xZrL.png'),
      )*/
        Text('datos')
      ],
    ));
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 10,
            color: Colors.greenAccent,
            offset: Offset(6, 10),
            spreadRadius: 1.0,
          )
        ],
      ),
      child: ClipRRect(child: card, borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
