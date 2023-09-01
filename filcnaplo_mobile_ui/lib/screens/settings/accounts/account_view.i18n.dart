import 'package:i18n_extension/i18n_extension.dart';
import 'package:filcnaplo_uwuifier/src/filcnaplo_uwuify_base.dart';

Uwuifier uwuifier = Uwuifier();
extension Localization on String {
  static final _t = Translations.byLocale("hu_hu") +
      {
        "en_en": {
          "birthdate": "Birth date",
          "school": "School",
          "class": "Class",
          "address": "Home address",
          "parents": "Parents".one("Parent"),
        },
        "hu_hu": {
          "birthdate": "Születési dátum",
          "school": "Iskola",
          "class": "Osztály",
          "address": "Lakcím",
          "parents": "Szülők".one("Szülő"),
        },
        "de_de": {
          "birthdate": "Geburtsdatum",
          "school": "Schule",
          "class": "Klasse",
          "address": "Wohnanschrift",
          "parents": "Eltern",
        },
      };

  String get i18n => uwuifier.uwuifySentence(localize(this, _t));
  String fill(List<Object> params) => uwuifier.uwuifySentence(localizeFill(this, params));
  String plural(int value) => uwuifier.uwuifySentence(localizePlural(value, this, _t));
  String version(Object modifier) => uwuifier.uwuifySentence(localizeVersion(modifier, this, _t));
}
