import 'package:flutter/cupertino.dart';

class AppUtils {
  static final AppUtils _instance = AppUtils._internal();
  factory AppUtils() {
    return _instance;
  }

  AppUtils._internal();

  initImages(BuildContext context) {
    precacheImage(const AssetImage(IndexImages.menu), context);
    precacheImage(const AssetImage(IndexImages.filter), context);
    precacheImage(const AssetImage(IndexImages.fondo), context);
    precacheImage(const AssetImage(IndexImages.repuestos), context);
    precacheImage(const AssetImage(IndexImages.herramientas), context);
    precacheImage(const AssetImage(IndexImages.accesorios), context);
    precacheImage(const AssetImage(IndexImages.cauchos), context);
    precacheImage(const AssetImage(IndexImages.aditivos), context);
    precacheImage(const AssetImage(IndexImages.disco), context);
    precacheImage(const AssetImage(IndexImages.cajaHerramientas), context);
    precacheImage(const AssetImage(IndexImages.rin), context);
    precacheImage(const AssetImage(IndexImages.amortiguadores), context);
    precacheImage(const AssetImage(IndexImages.google), context);
    precacheImage(const AssetImage(IndexImages.face), context);
    precacheImage(const AssetImage(IndexImages.home1), context);
    precacheImage(const AssetImage(IndexImages.home2), context);
    precacheImage(const AssetImage(IndexImages.home3), context);
    precacheImage(const AssetImage(IndexImages.home4), context);
    precacheImage(const AssetImage(IndexImages.insta), context);
    precacheImage(const AssetImage(IndexImages.facebook), context);
    precacheImage(const AssetImage(IndexImages.logo), context);
  }
}

class IndexImages {
  static const menu = "assets/Sort.png";
  static const filter = "assets/Filter.png";
  static const fondo = "assets/imagen_ppal.png";
  static const repuestos = "assets/repuestos2.png";
  static const herramientas = "assets/herramientas.png";
  static const accesorios = "assets/accesorios.png";
  static const cauchos = "assets/cauchos.png";
  static const aditivos = "assets/aditivos.png";
  static const disco = "assets/disco.png";
  static const cajaHerramientas = "assets/caja_herramientas.png";
  static const rin = "assets/rin.png";
  static const amortiguadores = "assets/amortiguadores.png";
  static const google = "assets/google.png";
  static const face = "assets/face.png";
  static const home1 = "assets/home1.png";
  static const home2 = "assets/home2.png";
  static const home3 = "assets/home3.png";
  static const home4 = "assets/home4.png";
  static const insta = "assets/insta.png";
  static const facebook = "assets/facebook.png";
  static const logo = "assets/logo.png";
}
