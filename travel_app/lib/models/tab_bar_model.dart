class TabBarModel {
  final String title;
  final String location;
  final String image;
  final int price;

  TabBarModel(
      {required this.title,
      required this.location,
      required this.image,
      required this.price});
}

List<TabBarModel> places = [
  TabBarModel(
      title: "South Island",
      location: "New Zealand",
      image: "assets/images/New_Zealand.jpg",
      price: 320),
  TabBarModel(
      title: "Eiffel Tower",
      location: "Paris",
      image: "assets/images/paris.jpg",
      price: 262),
  TabBarModel(
      title: "Tahiti",
      location: "Island in French Polynesia",
      image: "assets/images/Tahiti.jpg",
      price: 221)
];
List<TabBarModel> inspiration = [
  TabBarModel(
      title: "Unguja",
      location: "Island in Tanzania",
      image: "assets/images/download.jpeg",
      price: 543),
  TabBarModel(
      title: "Baja Peninsula",
      location: "Mexico",
      image: "assets/images/images.jpeg",
      price: 238),
  TabBarModel(
      title: "Sossusvlei",
      location: "Salt pan in Namibia",
      image: "assets/images/Sossusvlei.jpg",
      price: 124)
];
List<TabBarModel> popular = [
  TabBarModel(
      title: "Dubai",
      location: "United Arab Emirates",
      image: "assets/images/607d0368488549e7b9179724b0db4940.jpg",
      price: 756),
  TabBarModel(
      title: "Cancún",
      location: "Mexico",
      image:
          "assets/images/22bab5ad4b9aa1027ad00a84ea7493d2c0c5e666d43d3b9413e332bdbd3f1780.jpg",
      price: 321),
  TabBarModel(
      title: "Crete",
      location: "Greece",
      image: "assets/images/shutterstock_436817194.jpg",
      price: 340),
];
