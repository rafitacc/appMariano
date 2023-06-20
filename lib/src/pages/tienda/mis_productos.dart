import 'package:app_tienda/src/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MisProductos extends StatelessWidget {
  const MisProductos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.onSurface,
      body: _body(),
    );
  }

  Widget _body() {
    return ListView.builder(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 100),
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return const ItemListMisProductos();
      },
    );
  }
}
