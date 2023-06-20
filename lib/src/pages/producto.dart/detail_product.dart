import 'package:app_tienda/src/config/service.dart';
import 'package:app_tienda/src/pages/producto.dart/detail_tienda.dart';
import 'package:app_tienda/src/pages/search/search.dart';
import 'package:app_tienda/src/widgets/item.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.onSurface,
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            print('ir a buscador de productos');
            showSearch(context: context, delegate: ProductosSearch());
          },
          child: Container(
            width: Get.width,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            child: Row(children: const [
              Spacer(),
              Icon(
                CupertinoIcons.search,
                color: Colors.grey,
                size: 30,
              ),
              SizedBox(width: 10),
            ]),
          ),
        ),
        // leading: IconButton(
        //   splashColor: Colors.black,
        //   splashRadius: 1,
        //   onPressed: () {
        //     print('paso menu');
        //   },
        //   icon: const Center(
        //     child: ImageIcon(
        //       AssetImage(IndexImages.menu),
        //       size: 30,
        //     ),
        //   ),
        // ),
        actions: [
          IconButton(
            splashColor: Colors.black,
            splashRadius: 1,
            onPressed: () {
              print('paso busqueda');
            },
            icon: const Center(
              child: ImageIcon(
                AssetImage(IndexImages.filter),
                size: 25,
              ),
            ),
          ),
          const SizedBox(width: 5)
        ],
      ),
      body: _body(),
    );
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
          child: _bodyMain(),
        ),
      ],
    );
  }

  Widget _bodyMain() {
    return ListView(
      padding: const EdgeInsets.only(bottom: 0, top: 0),
      children: [
        SizedBox(
          height: Get.width + 30,
          child: Stack(
            children: [
              // ClipRRect(
              //   borderRadius: const BorderRadius.all(Radius.circular(30.0)),
              //   child: Image.asset(
              //     IndexImages.disco,
              //     width: Get.width,
              //   ),
              // ),
              SwiperItem(),
              Positioned(
                top: Get.width - 20,
                left: 0,
                child: SizedBox(
                  height: 45,
                  width: Get.width,
                  child: Row(children: [
                    const SizedBox(width: 20),
                    Container(
                      height: 45,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(84, 152, 60, 1),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            '500\$',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '2.940,00 Bs',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              height: 1.2,
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    FloatingActionButton(
                      backgroundColor: const Color.fromRGBO(131, 142, 170, 1),
                      elevation: 0,
                      heroTag: null,
                      mini: true,
                      onPressed: () {
                        print('compartir');
                      },
                      child: const Icon(Icons.share),
                    ),
                    FloatingActionButton(
                      backgroundColor: const Color.fromRGBO(222, 18, 18, 1),
                      elevation: 0,
                      heroTag: null,
                      mini: true,
                      onPressed: () {
                        print('me gusta');
                      },
                      child: const Icon(CupertinoIcons.heart),
                    ),
                    const SizedBox(width: 20),
                  ]),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Text(
                'Disco De Freno De Acero De Aireación Con Perforación Y Rojo Seis Pistones Pinzas Y Pastillas.',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit.Class aptent taciti sociosqu ad litora torquent perconubia nostra, per inceptos himenaeos.Mauris in erat justo.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => DetailTienda());
                },
                contentPadding: const EdgeInsets.all(0),
                minLeadingWidth: 5,
                dense: true,
                leading: const CircleAvatar(
                  maxRadius: 15,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Autoperiquito El Guaro',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Get.theme.colorScheme.surface,
                  ),
                ),
                subtitle: const Text(
                  'Barquisimeto - lara',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color.fromRGBO(131, 142, 170, 1),
                  ),
                ),
              ),
              _addCarrito(),
              const SizedBox(height: 10),
              const Text(
                '1247 unidades disponibles',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color.fromRGBO(131, 142, 170, 1),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                height: 2,
                color: Colors.black,
              ),
              SizedBox(
                width: Get.width,
                child: const Text(
                  'DETALLE DEL PRODUCTO',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    height: 1.2,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: Get.width,
                child: const Text(
                  'Class aptent taciti sociosqu ad litora torquent perconubia nostra, per inceptos himenaeos. Mauris ineratjusto. Nullam ac urna eu felis dapibus condimentum sitamet a augue. Sed non neque elit sed. Nam nec tellusa odio tincidunt auctor a ornare odio. Sed non maurisvitae erat consequat auctor eu in elit. Class aptenttaciti sociosqu ad litora torquent per conubia nostra,per inceptos himenaeos. ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                height: 2,
                color: Colors.black,
              ),
              SizedBox(
                width: Get.width,
                child: const Text(
                  'PRODUCTOS RELACIONADOS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        ListRelacionado(),
        const SizedBox(height: 10),
        _consejosSegridad(),
      ],
    );
  }

  Widget _consejosSegridad() {
    return Container(
      width: Get.width,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 20),
            margin: const EdgeInsets.only(bottom: 10),
            width: Get.width,
            child: const Text(
              'Consejos de Seguridad',
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                height: 1.2,
              ),
            ),
          ),
          const ListTile(
            minLeadingWidth: 5,
            dense: true,
            leading: Icon(
              Icons.arrow_forward,
              color: Colors.yellow,
            ),
            title: Text(
              'No uses servicios de pago anónimos, ni envíesdinero al exterior.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            minLeadingWidth: 5,
            dense: true,
            leading: Icon(
              Icons.arrow_forward,
              color: Colors.yellow,
            ),
            title: Text(
              'En caso de entregas personales, acuerda lugaresseguros (por ej. centro comerciales)',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            minLeadingWidth: 5,
            dense: true,
            leading: Icon(
              Icons.arrow_forward,
              color: Colors.yellow,
            ),
            title: Text(
              'Realiza todas las preguntas pertinentes antes derealizar tu compra.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            minLeadingWidth: 5,
            dense: true,
            leading: Icon(
              Icons.arrow_forward,
              color: Colors.yellow,
            ),
            title: Text(
              'Se cuidadoso con ofertas que se encuentren pordebajo del precio del mercado.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 20),
            margin: const EdgeInsets.only(bottom: 10),
            width: Get.width,
            child: const Text(
              'Para su información',
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                height: 1.2,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: Get.width,
            child: const Text(
              'Veo Repuestos no asume responsabilidad por lainformación suministrada en este anuncio, el únicoresponsable es el usuario aquí identificado. VeoRepuestos no es propietario ni vende artículos. VeoRepuestos no asume responsabilidad por daños operjuicios que pudiere sufrir el usuario o visitante poroperaciones sobre anuncios publicados en el sitio.',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                height: 1.2,
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _addCarrito() {
    return Container(
      height: 55,
      width: Get.width,
      decoration: BoxDecoration(
        border: Border.all(width: 2.0),
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      ),
      child: Row(
        children: [
          const Expanded(
              child: Center(
            child: Text(
              '1000',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          )),
          Container(
            height: 55,
            width: Get.width * 0.55,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  CupertinoIcons.cart_badge_plus,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                FittedBox(
                  child: Text(
                    'agregar al carrito'.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SwiperItem extends StatelessWidget {
  const SwiperItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            print("swipe $index");
          },
          child: Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
              child: Image.asset(
                IndexImages.disco,
                width: Get.width,
              ),
            ),
          ),
        );
      },
      itemCount: 7,
      autoplay: false,
      curve: Curves.easeOutExpo,
      duration: (3000),
      viewportFraction: 1,
      scale: 0.5,
      pagination: _paginationx(),
      // onIndexChanged: (i) {
      //   print('seleccion de imagen $i');
      // },
    );
  }

  SwiperCustomPagination _paginationx() {
    return SwiperCustomPagination(
        builder: (BuildContext context, SwiperPluginConfig config) {
      var color = const Color(0xffC2C2C2);
      var activeColor = const Color.fromRGBO(0, 180, 233, 1);
      var size = 7.0;
      var activeSize = 7.0;
      var space = 2.0;
      List<Widget> list = [];
      int itemCount = config.itemCount;
      int activeIndex = config.activeIndex;
      for (int i = 0; i < itemCount; ++i) {
        bool active = i == activeIndex;
        list.add(Container(
          key: Key("pagination_$i"),
          margin: EdgeInsets.all(space),
          child: ClipOval(
            child: Container(
              decoration: active
                  ? BoxDecoration(color: Get.theme.primaryColor)
                  : BoxDecoration(color: active ? activeColor : color),
              width: active ? activeSize : size,
              height: active ? activeSize : size,
            ),
          ),
        ));
      }
      if (config.scrollDirection == Axis.vertical) {
        return SizedBox(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: list,
            ),
          ),
        );
      } else {
        return Positioned(
          top: 10,
          right: 10,
          child: Container(
            height: 30,
            width: 45,
            decoration: BoxDecoration(
              color: Get.theme.colorScheme.onSurface,
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            ),
            child: Center(
              child: Text(
                '${activeIndex + 1}/7',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        );
      }
    });
  }
}
