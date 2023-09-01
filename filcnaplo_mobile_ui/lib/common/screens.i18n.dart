import 'package:i18n_extension/i18n_extension.dart';
import 'package:filcnaplo_uwuifier/src/filcnaplo_uwuify_base.dart';

Uwuifier uwuifier = Uwuifier();
extension ScreensLocalization on String {
  static final _t = Translations.byLocale("hu_hu") +
      {
        "en_en": {
          "home": "Home",
          "grades": "Grades",
          "timetable": "Timetable",
          "messages": "Messages",
          "absences": "Absences",
        },
        "hu_hu": {
          "home": "Kezdőlap",
          "grades": "Jegyek",
          "timetable": "Órarend",
          "messages": "Üzasdenetek",
          "absences": "Hiányok",
        },
        "de_de": {
          "home": "Zuhause",
          "grades": "Noten",
          "timetable": "Zeitplan",
          "messages": "Mitteilungen",
          "absences": "Fehlen",
        },
      };

  String get i18n => uwuifier.uwuifySentence(localize(this, _t));
  String fill(List<Object> params) => uwuifier.uwuifySentence(localizeFill(this, params));
  String plural(int value) => uwuifier.uwuifySentence(localizePlural(value, this, _t));
  String version(Object modifier) => uwuifier.uwuifySentence(localizeVersion(modifier, this, _t));
}
