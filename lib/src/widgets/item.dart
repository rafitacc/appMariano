import 'package:app_tienda/src/config/service.dart';
import 'package:app_tienda/src/pages/carrito/count_add.dart';
import 'package:app_tienda/src/pages/producto.dart/detail_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridItem extends StatelessWidget {
  const GridItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Ir a detalle de producto');
        Get.to(() => const DetailProduct());
      },
      child: Container(
        width: Get.width / 2,
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  IndexImages.disco,
                  width: Get.width / 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Disco De Freno De Acero DeAireación Con Perforación',
                        style: TextStyle(
                          height: 1.4,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '120\$',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Get.theme.colorScheme.surface,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 3,
              right: 3,
              child: FloatingActionButton(
                  heroTag: null,
                  elevation: 2,
                  mini: true,
                  backgroundColor: Colors.white,
                  onPressed: () {
                    print('add carrito');
                  },
                  child: const Icon(
                    CupertinoIcons.cart_badge_plus,
                    color: Colors.black,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class ListRelacionado extends StatelessWidget {
  const ListRelacionado({
    Key? key,
  }) : super(key: key);

  final List<Widget> listCatego = const [
    ItemRelacionado(),
    ItemRelacionado(),
    ItemRelacionado(),
    ItemRelacionado(),
    ItemRelacionado(),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185,
      width: Get.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: listCatego,
      ),
    );
  }
}

class ItemRelacionado extends StatelessWidget {
  const ItemRelacionado({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('ir detalle de producto');
        Get.off(() => const DetailProduct(), preventDuplicates: false);
      },
      child: Container(
        width: Get.width * 0.3,
        margin: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
              child: Image.asset(
                IndexImages.disco,
                width: Get.width * 0.3,
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              'Disco De Freno De Acero De Aireación Con Perforación Y Rojo Seis Pistones Pinzas Y Pastillas.',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 11,
                height: 1,
              ),
            ),
            const SizedBox(height: 7),
            SizedBox(
              width: Get.width * 0.3,
              child: Text(
                '164\$',
                style: TextStyle(
                  color: Get.theme.colorScheme.surface,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  height: 1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: Get.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Row(children: [
        const SizedBox(width: 5),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1.5, color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(25.0)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(25.0)),
            child: Image.asset(
              IndexImages.disco,
              width: Get.width * 0.25,
            ),
          ),
        ),
        const SizedBox(width: 5),
        SizedBox(
          width: Get.width * 0.6 - 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const SizedBox(
                child: Text(
                  'Maletín juego de llaves de vaso108 piezas Kraft Müller',
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                child: Text(
                  '165\$',
                  maxLines: 2,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Get.theme.colorScheme.surface,
                      fontSize: 16),
                ),
              ),
              const SizedBox(height: 5),
              const SizedBox(
                width: 110,
                child: CounterAdd2(indeX: 1),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        const Spacer(),
        Container(
          width: 1.5,
          height: 125,
          color: Colors.grey,
        ),
        const Padding(
          padding: EdgeInsets.all(3.0),
          child: Icon(
            Icons.cancel_outlined,
            size: 30,
            color: Colors.grey,
          ),
        ),
      ]),
    );
  }
}

class ItemListMisProductos extends StatelessWidget {
  const ItemListMisProductos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: Get.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Row(children: [
        const SizedBox(width: 5),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1.5, color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(25.0)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(25.0)),
            child: Image.asset(
              IndexImages.disco,
              width: Get.width * 0.25,
            ),
          ),
        ),
        const SizedBox(width: 5),
        SizedBox(
          width: Get.width * 0.6 - 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const SizedBox(
                child: Text(
                  'Maletín juego de llaves de vaso108 piezas Kraft Müller',
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                child: Text(
                  '165\$',
                  maxLines: 2,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Get.theme.colorScheme.surface,
                      fontSize: 16),
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                // color: Colors.blue,
                width: Get.width * 0.6 - 40,
                child: Row(
                  children: [
                    Container(
                      width: Get.width * 0.3 - 40,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: const Center(
                          child: FittedBox(
                              child: Text(
                        'Editar',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))),
                    ),
                    const Spacer(),
                    Container(
                      width: Get.width * 0.3 - 40,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.grey),
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: const Center(
                          child: FittedBox(
                              child: Text(
                        'Ocultar',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ))),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        const Spacer(),
        // Container(
        //   width: 1.5,
        //   height: 125,
        //   color: Colors.grey,
        // ),
        Container(
          height: 125,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          padding: const EdgeInsets.all(3.0),
          child: const Icon(
            Icons.cancel_outlined,
            size: 30,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}
