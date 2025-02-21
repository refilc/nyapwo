import 'package:i18n_extension/i18n_extension.dart';
import 'package:filcnaplo_uwuifier/src/filcnaplo_uwuify_base.dart';

Uwuifier uwuifier = Uwuifier();
extension SettingsLocalization on String {
  static final _t = Translations.byLocale("hu_hu") +
      {
        "en_en": {
          "theme_prev": "Preview",
          "colorpicker_presets": "Presets",
          "colorpicker_background": "Background",
          "colorpicker_panels": "Panels",
          "colorpicker_accent": "Accent",
          "need_sub": "You need Kupak subscription to use modify this.",
          "advanced": "Advanced",
        },
        "hu_hu": {
          "theme_prev": "Előnézet",
          "colorpicker_presets": "Téma",
          "colorpicker_background": "Háttér",
          "colorpicker_panels": "Panelek",
          "colorpicker_accent": "Színtónus",
          "need_sub": "A módosításhoz Kupak szintű támogatás szükséges.",
          "advanced": "Haladó",
        },
        "de_de": {
          "theme_prev": "Vorschau",
          "colorpicker_presets": "Farben",
          "colorpicker_background": "Hintergrund",
          "colorpicker_panels": "Tafeln",
          "colorpicker_accent": "Akzent",
          "need_sub":
              "Sie benötigen ein Kupak-Abonnement, um diese Funktion zu ändern.",
          "advanced": "Fortschrittlich",
        },
      };

  String get i18n => uwuifier.uwuifySentence(localize(this, _t));
  String fill(List<Object> params) => uwuifier.uwuifySentence(localizeFill(this, params));
  String plural(int value) => uwuifier.uwuifySentence(localizePlural(value, this, _t));
  String version(Object modifier) => uwuifier.uwuifySentence(localizeVersion(modifier, this, _t));
}
