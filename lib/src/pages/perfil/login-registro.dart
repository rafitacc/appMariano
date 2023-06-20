import 'package:app_tienda/src/config/config_global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistroLogin extends StatelessWidget {
  RegistroLogin({Key? key}) : super(key: key);
  final controller = Get.put(GeneralController());
  @override
  Widget build(BuildContext context) {
    return _body();
  }

  _body() {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: Get.height * 0.2,
              color: Colors.black,
            ),
            const Spacer(),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: _bodyMain(),
        ),
      ],
    );
  }

  _bodyMain() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(height: 30),
          const Text('Perfil de usuario'),
          const Text(
            '¿Que deseas hacer?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 30),
          const Text('Si ya tienes cuenta'),
          const SizedBox(height: 10),
          _botonInicio(),
          const SizedBox(height: 15),
          const Text('Si no tienes cuenta en Veo Repuestos'),
          const SizedBox(height: 15),
          _botonRegistro(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            height: 2,
            width: Get.width,
            color: Get.theme.colorScheme.onSurface,
          ),
          const Text(
            'Si vendes repuestos, accesorios, herramientaso cualquier producto asociado al sectorautomotriz y deseas ofrecerlos en nuestraplataforma suscribete para que puedas creartu propia tienda Veo Repuestos.',
          ),
          const SizedBox(height: 30),
          _botonsubscri(),
        ],
      ),
    );
  }

  Widget _botonInicio() {
    return GestureDetector(
      onTap: () {
        controller.ingresar.value = true;
      },
      child: Container(
        height: 55,
        width: Get.width,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: const Center(
          child: Text(
            'Iniciar Sesión',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }

  Widget _botonRegistro() {
    return GestureDetector(
      onTap: () {
        controller.registro.value = true;
      },
      child: Container(
        height: 55,
        width: Get.width,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: const Center(
          child: Text(
            'Registrarme',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }

  Widget _botonsubscri() {
    return Container(
      height: 55,
      width: Get.width,
      decoration: BoxDecoration(
        color: Get.theme.colorScheme.surface,
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      ),
      child: const Center(
        child: Text(
          'quiero suscribirme',
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
