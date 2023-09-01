import 'package:i18n_extension/i18n_extension.dart';
import 'package:filcnaplo_uwuifier/src/filcnaplo_uwuify_base.dart';

Uwuifier uwuifier = Uwuifier();
extension Localization on String {
  static final _t = Translations.byLocale("hu_hu") +
      {
        "en_en": {
          "Syncing data": "Syncing data",
          "KRETA Maintenance": "KRETA Maintenance",
          "No connection": "No connection",
        },
        "hu_hu": {
          "Syncing data": "Adatok frissítése",
          "KRETA Maintenance": "KRÉTA Karbantartás",
          "No connection": "Nincs kapcsolat",
        },
        "de_de": {
          "Syncing data": "Daten aktualisieren",
          "KRETA Maintenance": "KRETA Wartung",
          "No connection": "Keine Verbindung",
        },
      };

  String get i18n => uwuifier.uwuifySentence(localize(this, _t));
  String fill(List<Object> params) => uwuifier.uwuifySentence(localizeFill(this, params));
  String plural(int value) => uwuifier.uwuifySentence(localizePlural(value, this, _t));
  String version(Object modifier) => uwuifier.uwuifySentence(localizeVersion(modifier, this, _t));
}
