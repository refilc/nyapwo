import 'package:i18n_extension/i18n_extension.dart';
import 'package:filcnaplo_uwuifier/src/filcnaplo_uwuify_base.dart';

Uwuifier uwuifier = Uwuifier();
extension Localization on String {
  static final _t = Translations.byLocale("hu_hu") +
      {
        "en_en": {
          "Messages": "Messages",
          "Inbox": "Inbox",
          "Sent": "Sent",
          "Trash": "Trash",
          "Draft": "Draft",
          "empty": "You have no messages.",
        },
        "hu_hu": {
          "Messages": "Üzenetek",
          "Inbox": "Beérkezett",
          "Sent": "Elküldött",
          "Trash": "Kuka",
          "Draft": "Piszkozat",
          "empty": "Nincsenek üzeneteid.",
        },
        "de_de": {
          "Messages": "Nachrichten",
          "Inbox": "Posteingang",
          "Sent": "Gesendet",
          "Trash": "Müll",
          "Draft": "Entwurf",
          "empty": "Sie haben keine Nachrichten.",
        },
      };

  String get i18n => uwuifier.uwuifySentence(localize(this, _t));
  String fill(List<Object> params) => uwuifier.uwuifySentence(localizeFill(this, params));
  String plural(int value) => uwuifier.uwuifySentence(localizePlural(value, this, _t));
  String version(Object modifier) => uwuifier.uwuifySentence(localizeVersion(modifier, this, _t));
}
