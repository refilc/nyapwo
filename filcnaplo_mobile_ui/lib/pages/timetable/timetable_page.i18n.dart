import 'package:i18n_extension/i18n_extension.dart';
import 'package:filcnaplo_uwuifier/src/filcnaplo_uwuify_base.dart';

Uwuifier uwuifier = Uwuifier();
extension Localization on String {
  static final _t = Translations.byLocale("hu_hu") +
      {
        "en_en": {
          "timetable": "Timetable",
          "empty": "No school this week!",
          "week": "Week",
          "error": "Failed to fetch timetable!",
          "empty_timetable": "Timetable is empty!",
        },
        "hu_hu": {
          "timetable": "Órarend",
          "empty": "Ezen a héten nincs iskola.",
          "week": "Hét",
          "error": "Nem sikerült lekérni az órarendet!",
          "empty_timetable": "Az órarend üres!",
        },
        "de_de": {
          "timetable": "Zeitplan",
          "empty": "Keine Schule diese Woche.",
          "week": "Woche",
          "error": "Der Fahrplan konnte nicht abgerufen werden!",
          "empty_timetable": "Der Zeitplan ist blank!",
        },
      };

  String get i18n => uwuifier.uwuifySentence(localize(this, _t));
  String fill(List<Object> params) => uwuifier.uwuifySentence(localizeFill(this, params));
  String plural(int value) => uwuifier.uwuifySentence(localizePlural(value, this, _t));
  String version(Object modifier) => uwuifier.uwuifySentence(localizeVersion(modifier, this, _t));
}
