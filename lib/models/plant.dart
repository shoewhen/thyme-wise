class Plant {
  String name;
  String scientificName;
  String description;
  String imagePath;

  Plant({
    required this.name, 
    required this.scientificName,
    required this.description,
    required this.imagePath
  });

  String get _name => name;
  String get _scientificName => scientificName;
  String get _description => description;
  String get _imagePath => imagePath;
}