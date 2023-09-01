import 'package:i18n_extension/i18n_extension.dart';
import 'package:filcnaplo_uwuifier/src/filcnaplo_uwuify_base.dart';

Uwuifier uwuifier = Uwuifier();
extension Localization on String {
  static final _t = Translations.byLocale("hu_hu") +
      {
        "en_en": {
          "Lesson": "Lesson",
          "Excuse": "Excuse",
          "Mode": "Mode",
          "Submit date": "Submit Date",
          "show in timetable": "Show in timetable",
          "minutes": "minutes".one("minute"),
          "delay": "Delay",
        },
        "hu_hu": {
          "Lesson": "Óra",
          "Excuse": "Igazolás",
          "Mode": "Típus",
          "Submit date": "Rögzítés dátuma",
          "show in timetable": "Megtekintés az órarendben",
          "minutes": "perc",
          "delay": "Késés",
        },
        "de_de": {
          "Lesson": "Stunde",
          "Excuse": "Anerkannt",
          "Mode": "Typ",
          "Submit date": "Datum einreichen",
          "show in timetable": "im Stundenplan anzeigen",
          "minutes": "Minuten".one("Minute"),
          "delay": "Verspätung",
        }
      };

  String get i18n => uwuifier.uwuifySentence(localize(this, _t));
  String fill(List<Object> params) => uwuifier.uwuifySentence(localizeFill(this, params));
  String plural(int value) => uwuifier.uwuifySentence(localizePlural(value, this, _t));
  String version(Object modifier) => uwuifier.uwuifySentence(localizeVersion(modifier, this, _t));
}
