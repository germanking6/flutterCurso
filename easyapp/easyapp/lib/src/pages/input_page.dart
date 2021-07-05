import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _fecha = 'dd/mm/yyyy';
  String _pais = 'selecciona pais';
  int _nombreDataLength = 0;

  List<String> _paises = ['mexico', 'USA', 'mxn', 'hola'];

  TextEditingController _inputController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hola')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearContra(),
          Divider(),
          _crearFecha(),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      //autofocus: true,

      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Letras $_nombreDataLength'),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(2), right: Radius.circular(2))),
        hintText: 'nombre del usuario',
        labelText: 'Nombre',
        helperText: 'nombre completo :P',
        suffixIcon: Icon(Icons.account_box_rounded),
        icon: Icon(Icons.account_circle_rounded),
      ),
      onChanged: (data) => setState(() {
        _nombre = data;
        _nombreDataLength = _nombre.length;
      }),
    );
  }

  Widget _crearEmail() {
    return TextField(
      //autofocus: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(2), right: Radius.circular(2))),
        hintText: 'x@x.x',
        labelText: 'Correo Electronico',
        suffixIcon: Icon(Icons.mail),
        icon: Icon(Icons.alternate_email_outlined),
      ),
      onChanged: (data) => setState(() {
        _email = data;
      }),
    );
  }

  Widget _crearContra() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(2), right: Radius.circular(2))),
        hintText: '******',
        labelText: 'Contraseña',
        suffixIcon: Icon(Icons.password),
        icon: Icon(Icons.lock),
      ),
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('el nombre es $_nombre'),
      subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('email: $_email'),
        Text('fecha: $_fecha'),
        Text('pais: $_pais')
      ]),
    );
  }

  _crearFecha() {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(2), right: Radius.circular(2))),
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(
          Icons.calendar_today,
        ),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime(2000),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = [];
    _paises.forEach((pais) {
      lista.add(DropdownMenuItem(
        child: Text(pais),
        value: pais,
      ));
    });
    return lista;
  }

  Widget _crearDropdown() {
    return Row(children: [
      Icon(Icons.airplane_ticket_sharp),
      SizedBox(
        width: 40,
      ),
      Text('Pais: '),
      Expanded(
        child: DropdownButton(
          items: getOpcionesDropdown(),
          hint: Text(_pais),
          onChanged: (data) {
            setState(() => _pais = data.toString());
          },
        ),
      ),
    ]);
  }
}
