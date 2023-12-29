import 'dart:ui';

class ListModel {
  final String food_images;
  final String prize;
  final String productname;
  final String companyname;

  ListModel({
    required this.food_images,
    required this.prize,
    required this.productname,
    required this.companyname,
  });
}

List<ListModel> ListModelView = [
  ListModel(
      food_images: "",
      prize: "\$4",
      productname: "Apple",
      companyname: ""),
  ListModel(
      food_images: "",
      prize: "\$4",
      productname: "Apple",
      companyname: ""),
  ListModel(
      food_images: "",
      prize: "\$4",
      productname: "Apple",
      companyname: ""),
  ListModel(
      food_images: "",
      prize: "\$4",
      productname: "Apple",
      companyname: ""),
];
