import 'category.dart';
import 'package:filcnaplo_uwuifier/src/filcnaplo_uwuify_base.dart';

Uwuifier uwuifier = Uwuifier();

class Subject {
  String id;
  Category category;
  String name;
  String? renamedTo;

  bool get isRenamed => renamedTo != null;

  // Constructor
  Subject({required this.id, required this.category, required this.name, this.renamedTo});

  // Factory method to create Subject from JSON
  factory Subject.fromJson(Map json) {
  final id = json["Uid"] ?? "";
  final rawName = json["Nev"];
  if (rawName is String) {
    final name = uwuifier.uwuifySentence(rawName.trim()); // Uwuify the name
    return Subject(
      id: id,
      category: Category.fromJson(json["Kategoria"] ?? {}),
      name: name,
    );
  } else {
    // Handle the case where "Nev" is not a string (or null) gracefully
    return Subject(
      id: id,
      category: Category.fromJson(json["Kategoria"] ?? {}),
      name: "Unknown", // Provide a default value or handle as needed
    );
  }
}


  @override
  bool operator ==(other) {
    if (other is! Subject) return false;
    return id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
