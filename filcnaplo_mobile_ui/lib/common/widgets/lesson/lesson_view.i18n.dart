import 'package:i18n_extension/i18n_extension.dart';
import 'package:filcnaplo_uwuifier/src/filcnaplo_uwuify_base.dart';

Uwuifier uwuifier = Uwuifier();

extension Localization on String {
  static final _t = Translations.byLocale("hu_hu") +
      {
        "en_en": {
          "Room": "Room",
          "Description": "Description",
          "Lesson Number": "Lesson Number",
          "Group": "Group",
        },
        "hu_hu": {
          "Room": "Terem",
          "Description": "Leírás",
          "Lesson Number": "Éves óraszám",
          "Group": "Csoport",
        },
        "de_de": {
          "Room": "Raum",
          "Description": "Bezeichnung",
          "Lesson Number": "Ordinalzahl",
          "Group": "Gruppe",
        }
      };

  String get i18n => uwuifier.uwuifySentence(localize(this, _t));
  String fill(List<Object> params) => uwuifier.uwuifySentence(localizeFill(this, params));
  String plural(int value) => uwuifier.uwuifySentence(localizePlural(value, this, _t));
  String version(Object modifier) => uwuifier.uwuifySentence(localizeVersion(modifier, this, _t));
}
