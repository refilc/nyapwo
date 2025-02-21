import 'package:i18n_extension/i18n_extension.dart';
import 'package:filcnaplo_uwuifier/src/filcnaplo_uwuify_base.dart';

Uwuifier uwuifier = Uwuifier();
extension Localization on String {
  static final _t = Translations.byLocale("hu_hu") +
      {
        "en_en": {
          "Grades": "Grades",
          "Ghost Grade": "Ghost Grade",
          "Grade Calculator": "Average calculator",
          "Add Grade": "Add Grade",
          "limit_reached": "You cannot add more Ghost Grades.",
        },
        "hu_hu": {
          "Grades": "Jegyek",
          "Ghost Grade": "Szellem jegy",
          "Grade Calculator": "Átlag számoló",
          "Add Grade": "Hozzáadás",
          "limit_reached": "Nem adhatsz hozzá több jegyet.",
        },
        "de_de": {
          "Grades": "Noten",
          "Ghost Grade": "Geist Noten",
          "Grade Calculator": "Mittelwert-Rechner",
          "Add Grade": "Hinzufügen",
          "limit_reached": "Sie können keine weiteren Noten hinzufügen.",
        },
      };

  String get i18n => uwuifier.uwuifySentence(localize(this, _t));
  String fill(List<Object> params) => uwuifier.uwuifySentence(localizeFill(this, params));
  String plural(int value) => uwuifier.uwuifySentence(localizePlural(value, this, _t));
  String version(Object modifier) => uwuifier.uwuifySentence(localizeVersion(modifier, this, _t));
}
