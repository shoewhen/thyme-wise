class Plant {
  String name;
  String scientificName;
  String imagePath;
  String watering;
  String growingConditions;
  String size;
  String difficulty;

  Plant({
    required this.name, 
    required this.scientificName,
    required this.imagePath,
    required this.watering,
    required this.growingConditions,
    required this.size,
    required this.difficulty
  });

  String get _name => name;
  String get _scientificName => scientificName;
  String get _imagePath => imagePath;
  String get _watering => watering;
  String get _growingConditions => growingConditions;
  String get _size => size;
  String get _difficulty => difficulty;
}