class Category {
  final String name;
  final String image;
  

  Category({required this.name, required this.image,});
}

List<Category> categoryComponents = [
  Category(name: "Beach", image: "assets/images/beach.png"),
  Category(name: "Boat", image: "assets/images/boat.png"),
  Category(name: "Museum", image: "assets/images/museum.png"),
  Category(name: "Lake", image: "assets/images/lake.png"),
  Category(name: "Tricycle", image: "assets/images/tricycle.png"),
 
];
