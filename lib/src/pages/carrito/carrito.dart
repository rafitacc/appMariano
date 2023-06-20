import 'package:app_tienda/src/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Carrito extends StatelessWidget {
  const Carrito({Key? key}) : super(key: key);

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
          decoration: BoxDecoration(
            color: Get.theme.colorScheme.onSurface,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Stack(
            children: [
              ListView.builder(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 100),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return const ItemList();
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _botonInicio(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _botonInicio() {
    return Column(
      children: [
        const Spacer(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          height: 2,
          width: Get.width,
          color: Colors.grey,
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: const [
              Text(
                'TOTAL',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              Text(
                '3.789\$',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            print('realizar pedido');
          },
          child: Container(
            margin:
                const EdgeInsets.only(bottom: 20, left: 25, right: 25, top: 15),
            height: 55,
            width: Get.width,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            child: const Center(
              child: Text(
                'REALIZAR PEDIDO',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
