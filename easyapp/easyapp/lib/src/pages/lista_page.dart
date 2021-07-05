import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _listaNumeros = [];

  ScrollController _scrollController = new ScrollController();

  bool _cargando = false;

  @override
  void initState() {
    super.initState();
    _agregar10();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchData();
      }
      ;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
    fetchData();
  }

  void _agregar10() {
    final random = Random();
    for (var i = 1; i < 10; i++) {
      _listaNumeros.add(random.nextInt(100));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lista'),
      ),
      body: Stack(
        children: <Widget>[_crearLista(), _crearLoading()],
      ),
    );
  }

  Widget _crearLista() {
    return RefreshIndicator(
      child: ListView.builder(
          controller: _scrollController,
          itemCount: _listaNumeros.length,
          itemBuilder: (BuildContext context, int index) {
            final imagen = _listaNumeros[index];
            if (imagen != null) {
              return FadeInImage(
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  image:
                      NetworkImage('https://picsum.photos/400/?image=$imagen'));
            } else {
              return FadeInImage(
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  image: NetworkImage('https://picsum.photos/400/?image=1'));
            }
          }),
      onRefresh: obtenerPagina1,
    );
  }

  Future obtenerPagina1() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _listaNumeros.clear();
      _agregar10();
    });
    return Future.delayed(duration);
  }

  Future fetchData() async {
    _cargando = true;
    setState(() {});
    final duration = new Duration(seconds: 2);
    return new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _cargando = false;
    _scrollController.animateTo(_scrollController.position.pixels,
        duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
    _agregar10();
  }

  Widget _crearLoading() {
    return (_cargando)
        ? Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[CircularProgressIndicator()]),
                SizedBox(
                  height: 15.0,
                )
              ])
        : Container();
  }
}
