import 'package:app_tienda/src/config/service.dart';
import 'package:app_tienda/src/widgets/item.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class DetailTienda extends StatefulWidget {
  const DetailTienda({Key? key}) : super(key: key);

  @override
  State<DetailTienda> createState() => _DetailTiendaState();
}

class _DetailTiendaState extends State<DetailTienda> {
  bool state = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.onSurface,
      appBar: AppBar(
        title: Text(
          'Autoperiquito El Guaro'.toUpperCase(),
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        titleSpacing: 0,
        actions: [
          Icon(
            CupertinoIcons.search,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(width: 10)
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
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 120,
            decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        IndexImages.disco,
                        width: Get.width * 0.25,
                        height: Get.width * 0.25,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: Get.width - 30 - Get.width * 0.25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Caracas  - Dtto Capital'.toUpperCase(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.phone_outlined,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 5),
                              Text('0212 123 4567'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.email_outlined,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 5),
                              SizedBox(
                                width: Get.width - 80 - Get.width * 0.25,
                                child: FittedBox(
                                    child:
                                        Text('autoperiquitoelguaro@gmail.com')),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Center(
                                child: ImageIcon(
                                  AssetImage(IndexImages.insta),
                                  size: 27,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 5),
                              Center(
                                child: ImageIcon(
                                  AssetImage(IndexImages.facebook),
                                  size: 27,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 5,
                  child: GestureDetector(
                    onTap: () => setState(() {
                      state = !state;
                    }),
                    child: Icon(
                      state
                          ? Icons.add_circle_outline
                          : Icons.remove_circle_outline,
                      color: Get.theme.colorScheme.surface,
                      size: 33,
                    ),
                  ),
                )
              ],
            ),
          ),
          !state
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Venta de repuestos, repuestos originales, mecánica en general, aire acondicionado, tren delantero, frenos, taller mecánico especializado honda.Reparación y reconstrucción de cajetín de sistema de dirección hidráulica, mecánica y computarizada.',
                  ),
                )
              : SizedBox(),
          _listItem(),
        ],
      ),
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
