import 'package:app_tienda/src/config/config_global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ajustes extends StatelessWidget {
  Ajustes({Key? key}) : super(key: key);
  final controller = Get.put(GeneralController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return ListView(
      padding: const EdgeInsets.only(top: 5, left: 25, right: 25),
      children: [
        GestureDetector(
          onTap: () {
            controller.ajustes.value = false;
          },
          child: SizedBox(
            width: Get.width * 0.5,
            child: const Text(
              'Mi perfil',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Ajustes',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          color: Get.theme.colorScheme.onSurface,
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
              label: Text('Nombre'),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          color: Get.theme.colorScheme.onSurface,
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
              label: Text('Correo'),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          color: Get.theme.colorScheme.onSurface,
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
              label: Text('Teléfono'),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          color: Get.theme.colorScheme.onSurface,
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
              label: Text('Estado'),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          color: Get.theme.colorScheme.onSurface,
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
              label: Text('Dirección'),
            ),
          ),
        ),
        const SizedBox(height: 30),
        _botonInicio(),
      ],
    );
  }

  Widget _botonInicio() {
    return Container(
      height: 55,
      width: Get.width,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      child: const Center(
        child: Text(
          'GUARDAR',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
