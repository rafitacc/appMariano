import 'package:app_tienda/src/config/config_global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiPerfil extends StatelessWidget {
  MiPerfil({Key? key}) : super(key: key);
  final controller = Get.put(GeneralController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return ListView(
      padding: const EdgeInsets.only(top: 5),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Text(
            'Mi perfil',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            'Mis compras',
            style: TextStyle(),
          ),
          subtitle: Text(
            '12 compras realizadas',
            style: TextStyle(),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(),
        ListTile(
          title: Text(
            'Direcciones',
            style: TextStyle(),
          ),
          subtitle: Text(
            'Configure su dirección de envio y de facturación',
            style: TextStyle(),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(),
        ListTile(
          onTap: () {
            controller.ajustes.value = true;
          },
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
        ListTile(
          title: Text(
            'Contraseña',
            style: TextStyle(),
          ),
          subtitle: Text(
            'Cambiar contraseña',
            style: TextStyle(),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(),
      ],
    );
  }
}
