class HomeCardModel {
  final String title, description, type, price, imgPath;
  final int bedSize, bathSize;

  HomeCardModel(
      {required this.title,
      required this.description,
      required this.type,
      required this.price,
      required this.imgPath,
      required this.bedSize,
      required this.bathSize});
}
