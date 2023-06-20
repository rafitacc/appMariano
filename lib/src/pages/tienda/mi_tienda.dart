import 'package:flutter/material.dart';

class MiTienda extends StatelessWidget {
  const MiTienda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return ListView(
      padding: const EdgeInsets.only(top: 5),
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Text(
            'Mi tienda',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            'Pedidos',
            style: TextStyle(),
          ),
          subtitle: Text(
            '17 pedidos nuevos',
            style: TextStyle(),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(),
        ListTile(
          title: Text(
            'Estadisticas',
            style: TextStyle(),
          ),
          subtitle: Text(
            'Estadisticas de su tienda',
            style: TextStyle(),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(),
        ListTile(
          title: Text(
            'Ajustes',
            style: TextStyle(),
          ),
          subtitle: Text(
            'Usuario e información de contacto',
            style: TextStyle(),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(),
      ],
    );
  }
}
