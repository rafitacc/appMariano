import 'package:app_tienda/src/config/config_global.dart';
import 'package:app_tienda/src/pages/tienda/ajustes.dart';
import 'package:app_tienda/src/pages/tienda/mi_perfil.dart';
import 'package:app_tienda/src/pages/tienda/mi_tienda.dart';
import 'package:app_tienda/src/pages/tienda/mis_productos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tienda extends StatelessWidget {
  Tienda({Key? key}) : super(key: key);
  final controller = Get.put(GeneralController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => _body());
  }

  Stack _body() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: DefaultTabController(
              length: 3,
              child: Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  flexibleSpace: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TabBar(
                          padding: EdgeInsets.all(0),
                          indicatorWeight: 5,
                          indicatorColor: Get.theme.colorScheme.surface,
                          labelColor: Get.theme.colorScheme.surface,
                          tabs: const [
                            Tab(icon: FittedBox(child: Text('MI PERFIL'))),
                            Tab(icon: FittedBox(child: Text('MI TIENDA'))),
                            Tab(icon: FittedBox(child: Text('MIS PRODUCTOS'))),
                          ],
                        ),
                        Container(
                          width: Get.width,
                          height: 3,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
                // ignore: prefer_const_constructors
                body: TabBarView(
                  children: [
                    controller.ajustes.value ? Ajustes() : MiPerfil(),
                    MiTienda(),
                    MisProductos(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
