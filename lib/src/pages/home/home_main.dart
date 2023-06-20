import 'package:app_tienda/src/config/config_global.dart';
import 'package:app_tienda/src/config/service.dart';
import 'package:app_tienda/src/pages/carrito/carrito.dart';
import 'package:app_tienda/src/pages/home/home.dart';
import 'package:app_tienda/src/pages/perfil/login-registro.dart';
import 'package:app_tienda/src/pages/perfil/login.dart';
import 'package:app_tienda/src/pages/perfil/recuperar.dart';
import 'package:app_tienda/src/pages/perfil/registro.dart';
import 'package:app_tienda/src/pages/search/search.dart';
import 'package:app_tienda/src/pages/tienda/tienda.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMain extends StatefulWidget {
  HomeMain({Key? key}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  final controller = Get.put(GeneralController());
  late int selectedPageIndex;
  List<Widget> pages4 = [
    const Home(),
    Tienda(),
    const Carrito(),
    RegistroLogin(),
  ];
  List<Widget> pages = [
    const Home(),
    Tienda(),
    const Carrito(),
    Login(),
  ];
  List<Widget> pages2 = [
    const Home(),
    Tienda(),
    const Carrito(),
    Registro(),
  ];
  List<Widget> pages3 = [
    const Home(),
    Tienda(),
    const Carrito(),
    Recuperar(),
  ];

  @override
  void initState() {
    super.initState();
    selectedPageIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('VEO REPUESTOS'),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            splashColor: Colors.black,
            splashRadius: 1,
            onPressed: () {
              print('paso menu');
              Scaffold.of(context).openDrawer();
            },
            icon: const Center(
              child: ImageIcon(
                AssetImage(IndexImages.menu),
                size: 30,
              ),
            ),
          );
        }),
        actions: [
          IconButton(
            splashColor: Colors.black,
            splashRadius: 1,
            onPressed: () {
              print('paso busqueda');
              showSearch(context: context, delegate: ProductosSearch());
            },
            icon: const Icon(CupertinoIcons.search),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SafeArea(
          top: true,
          child: ListView(
            children: [
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  IndexImages.logo,
                  width: Get.width * 0.25,
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                title: Text(
                  'Inicio',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Categorias',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Favoritos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Carrito',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Mi cuenta',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Mis ventas',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Mis compras',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Notificaciones',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(),
              SizedBox(height: 10),
              _botonCreate(),
            ],
          ),
        ),
      ),
      body: Obx(() => controller.ingresar.value
          ? pages[selectedPageIndex]
          : controller.registro.value
              ? pages2[selectedPageIndex]
              : controller.recuperar.value
                  ? pages3[selectedPageIndex]
                  : pages4[selectedPageIndex]),
      bottomNavigationBar: _homeBottomNavigationBar(),
    );
  }

  Widget _botonCreate() {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20),
      height: 55,
      // width: Get.width * 0.2,
      decoration: BoxDecoration(
        color: Get.theme.colorScheme.surface,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      child: const Center(
        child: Text(
          'Crear mi tienda',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  _homeBottomNavigationBar() {
    return BottomNavigationBar(
        selectedLabelStyle: const TextStyle(fontSize: 0, height: 0),
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        elevation: 0,
        iconSize: 30,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: selectPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Get.theme.primaryColor,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        currentIndex: selectedPageIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(IndexImages.home1), size: 32),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(IndexImages.home2), size: 25),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(IndexImages.home3), size: 25),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(IndexImages.home4), size: 25),
              label: ''),
        ]);
  }
}
