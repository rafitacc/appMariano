import 'package:app_tienda/src/config/service.dart';
import 'package:app_tienda/src/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: const Text('VEO REPUESTOS'),
      //   leading: IconButton(
      //     splashColor: Colors.black,
      //     splashRadius: 1,
      //     onPressed: () {
      //       print('paso menu');
      //     },
      //     icon: const Center(
      //       child: ImageIcon(
      //         AssetImage(IndexImages.menu),
      //         size: 30,
      //       ),
      //     ),
      //   ),
      //   actions: [
      //     IconButton(
      //       splashColor: Colors.black,
      //       splashRadius: 1,
      //       onPressed: () {
      //         print('paso busqueda');
      //       },
      //       icon: const Icon(CupertinoIcons.search),
      //     )
      //   ],
      // ),
      body: _body(),
    );
  }

  Widget _body() {
    return Stack(
      children: [
        Positioned(
          right: -5,
          child: Image.asset(
            IndexImages.fondo,
            height: Get.height * 0.4,
          ),
        ),
        const Positioned(
          top: 20,
          left: 20,
          child: Text(
            'Repuestos,\nAccesorios\ny más',
            style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.w900,
                fontSize: 35,
                letterSpacing: -2,
                height: 1.1),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: Get.height * 0.4,
            color: Get.theme.colorScheme.onSurface,
          ),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(top: Get.height * 0.36 - 80),
          child: _bodyMain(),
        ),
      ],
    );
  }

  Widget _bodyMain() {
    return Stack(
      children: [
        Container(
          height: 150,
          width: Get.width,
          padding: const EdgeInsets.only(top: 17),
          decoration: BoxDecoration(
              color: Get.theme.colorScheme.onSurface,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: const ListCategoriaHome(),
        ),
        Container(
          margin: const EdgeInsets.only(top: 110),
          width: Get.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text('Últimos productos publicados',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    )),
              ),
              Container(
                  height: 2,
                  width: Get.width,
                  color: Get.theme.colorScheme.onSurface),
              Container(
                color: Get.theme.colorScheme.onSurface,
                child: _listItem(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _listItem() {
    return AlignedGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      padding: const EdgeInsets.only(right: 0, left: 0, top: 0, bottom: 100),
      crossAxisCount: 2,
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
      itemBuilder: (context, index) {
        return const GridItem();
      },
    );
  }
}

class ListCategoriaHome extends StatelessWidget {
  const ListCategoriaHome({
    Key? key,
  }) : super(key: key);

  final List<Widget> listCatego = const [
    CategoriaSelect(value: IndexImages.repuestos, name: 'Repuestos'),
    CategoriaSelect(value: IndexImages.herramientas, name: 'Herramientas'),
    CategoriaSelect(value: IndexImages.accesorios, name: 'Accesorios'),
    CategoriaSelect(value: IndexImages.cauchos, name: 'Cauchos'),
    CategoriaSelect(value: IndexImages.aditivos, name: 'Otros'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      children: listCatego,
    );
  }
}

class CategoriaSelect extends StatelessWidget {
  final String value;
  final String name;
  const CategoriaSelect({Key? key, required this.value, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('seleccion de categoria');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          children: [
            Image.asset(
              value,
              width: Get.width * 0.15,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 11,
              ),
            )
          ],
        ),
      ),
    );
  }
}
