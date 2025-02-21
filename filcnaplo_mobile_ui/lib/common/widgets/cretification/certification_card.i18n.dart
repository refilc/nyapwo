import 'package:i18n_extension/i18n_extension.dart';
import 'package:filcnaplo_uwuifier/src/filcnaplo_uwuify_base.dart';

Uwuifier uwuifier = Uwuifier();
extension Localization on String {
  static final _t = Translations.byLocale("hu_hu") +
      {
        "en_en": {
          "final": "Final grades",
          "mid": "Midterm grades",
          "1q": "1. Quarter grades",
          "2q": "2. Quarter grades",
          "3q": "3. Quarter grades",
          "4q": "4. Quarter grades",
        },
        "hu_hu": {
          "final": "Év végi jegyek",
          "mid": "Félévi jegyek",
          "1q": "1. Negyedéves jegyek",
          "2q": "2. Negyedéves jegyek",
          "3q": "3. Negyedéves jegyek",
          "4q": "4. Negyedéves jegyek",
        },
        "de_de": {
          "final": "Zeugnis Noten",
          "mid": "Halbjährlich Noten",
          "1q": "1. Quartal Noten",
          "2q": "2. Quartal Noten",
          "3q": "3. Quartal Noten",
          "4q": "4. Quartal Noten",
        }
      };

  String get i18n => uwuifier.uwuifySentence(localize(this, _t));
  String fill(List<Object> params) => uwuifier.uwuifySentence(localizeFill(this, params));
  String plural(int value) => uwuifier.uwuifySentence(localizePlural(value, this, _t));
  String version(Object modifier) => uwuifier.uwuifySentence(localizeVersion(modifier, this, _t));
}
