import 'package:i18n_extension/i18n_extension.dart';
import 'package:filcnaplo_uwuifier/src/filcnaplo_uwuify_base.dart';

Uwuifier uwuifier = Uwuifier();

extension Localization on String {
  static final _t = Translations.byLocale("hu_hu") +
      {
        "en_en": {
          "mid": "Mid year",
          "not_enough_grades": "Not enough data to show a graph here.",
        },
        "hu_hu": {
          "mid": "Félév",
          "not_enough_grades": "Nem szereztél még elég jegyet grafikon mutatáshoz.",
        },
        "de_de": {
          "mid": "Halbjährlich",
          "not_enough_grades": "Noch nicht genug Noten, um die Grafik zu zeigen.",
        },
      };

  String get i18n => uwuifier.uwuifySentence(localize(this, _t));
  String fill(List<Object> params) => uwuifier.uwuifySentence(localizeFill(this, params));
  String plural(int value) => uwuifier.uwuifySentence(localizePlural(value, this, _t));
  String version(Object modifier) => uwuifier.uwuifySentence(localizeVersion(modifier, this, _t));
}
