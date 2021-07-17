import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image(image: AssetImage('assets/lotr.jpg')),
            _Title(),
            _Button(),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                  'Nostrud nulla cupidatat consequat minim ad nulla Lorem occaecat eiusmod. Aliquip do aliquip ut dolore commodo ex enim tempor. Esse fugiat magna excepteur reprehenderit dolore laborum voluptate aliquip.'),
            )
          ],
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.ac_unit,
                    color: Colors.blueAccent,
                  )),
              Text(
                'hola',
                style: TextStyle(color: Colors.blueAccent),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.tab,
                    color: Colors.blueAccent,
                  )),
              Text(
                'hola',
                style: TextStyle(color: Colors.blueAccent),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.face,
                    color: Colors.blueAccent,
                  )),
              Text(
                'hola',
                style: TextStyle(color: Colors.blueAccent),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Kandersteg, Switzerland')
            ],
          ),
        ),
        Expanded(child: Container()),
        Icon(
          Icons.star,
          color: Colors.red,
        ),
        Text('41')
      ]),
    );
  }
}
