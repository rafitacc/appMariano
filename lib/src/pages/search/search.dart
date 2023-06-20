import 'package:app_tienda/src/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class ProductosSearch extends SearchDelegate {
  final String searchFieldLabel;
  ProductosSearch() : this.searchFieldLabel = 'Buscar Producto';
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icono a la izquierda del buscador
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // todo: implement buildResults
    return Container(
      height: Get.height,
      width: Get.width,
      color: Get.theme.colorScheme.onSurface,
      child: _listItem(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      color: Get.theme.colorScheme.onSurface,
      child: _listItem(),
    );
  }

  Widget _listItem() {
    return AlignedGridView.count(
      //   shrinkWrap: true,
      //  physics: const NeverScrollableScrollPhysics(),
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
