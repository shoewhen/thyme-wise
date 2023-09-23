class Plant {
  String name;
  String description;
  String imagePath;

  Plant({
    required this.name, 
    required this.description,
    required this.imagePath
  });

  String get _name => name;
  String get _description => description;
  String get _imagePath => imagePath;
}