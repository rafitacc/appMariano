import 'package:app_tienda/src/config/config_global.dart';
import 'package:app_tienda/src/config/service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final controller = Get.put(GeneralController());
  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  _body(context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Stack(
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
      ),
    );
  }

  _bodyMain() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              controller.ingresar.value = false;
            },
            child: const Text(
              'Ingresar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
              'Si ya tienes una cuenta creada coloca aquítus datos de acceso'),
          const SizedBox(height: 20),
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
                label: Text('Contraseña'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          _botonInicio(),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('¿Todavía no tienes cuenta?'),
              GestureDetector(
                onTap: () {
                  print('ir a registro');
                  controller.ingresar.value = false;
                  controller.registro.value = true;
                },
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    ' Registrate aqui',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Get.theme.colorScheme.surface,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.ingresar.value = false;
                      controller.recuperar.value = true;
                    },
                    child: Text(
                      'Olvidé mis datos de acceso',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Get.theme.colorScheme.surface,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'O ingresa a través de',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('iniciar con google');
                        },
                        child: Container(
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Get.theme.colorScheme.onSurface,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Center(
                            child: Image.asset(
                              IndexImages.google,
                              width: 35,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          print('iniciar con faceboock');
                        },
                        child: Container(
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Get.theme.colorScheme.onSurface,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Center(
                            child: Image.asset(
                              IndexImages.face,
                              width: 35,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
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
          const SizedBox(height: 100)
        ],
      ),
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
          'Ingresar',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
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
