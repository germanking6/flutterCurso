import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  bool _bloquearCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sliders'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'),
                fadeInDuration: Duration(milliseconds: 300),
                height: _valorSlider,
                image: NetworkImage(
                    'https://ih1.redbubble.net/image.1046023972.3995/flat,750x,075,f-pad,750x1000,f8f8f8.jpg'))
          ],
        ),
      ),
    );
  }

  double _valorSlider = 101;
  Widget _crearSlider() {
    return Slider(
      value: _valorSlider,
      label: 'Tamaño del obama',
      onChanged: (!_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
      min: 100,
      max: 400,
    );
  }

  Widget _crearCheckbox() {
    return CheckboxListTile(
        title: Text('bloquar o no'),
        value: _bloquearCheck,
        onChanged: (data) {
          if (data != null) setState(() => _bloquearCheck = data);
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('bloquar o no'),
        value: _bloquearCheck,
        onChanged: (data) {
          setState(() => _bloquearCheck = data);
        });
  }
}
