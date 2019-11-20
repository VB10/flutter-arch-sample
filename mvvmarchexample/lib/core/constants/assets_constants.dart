class AssetConsts {
  static final String moneyLoginImage = _assetImageHelper(name: "money",type: "png");
  static final String notfoundSVG = _svgImagesPath(path: "notfound");
  
  
  static final String roboto = "Roboto";


  static _assetImageHelper({String name, String type}) =>
      "assets/images/$name.$type";
  
   static String _svgImagesPath(
      { String path}) {
    return "assets/svg/$path.svg";
  }
}