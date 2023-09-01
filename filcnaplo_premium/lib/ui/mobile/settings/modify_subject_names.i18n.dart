import 'package:i18n_extension/i18n_extension.dart';
import 'package:filcnaplo_uwuifier/src/filcnaplo_uwuify_base.dart';

Uwuifier uwuifier = Uwuifier();
extension SettingsLocalization on String {
  static final _t = Translations.byLocale("hu_hu") +
      {
        "en_en": {
          "renamed_subjects": "Renamed Subjects",
          "rename_subjects": "Rename Subjects",
          "rename_subject": "Rename Subject",
          "select_subject": "Select Subject",
          "modified_name": "Modified Name",
          "modify_subjects": "Modify Subjects",
          "cancel": "Cancel",
          "done": "Done",
          "rename_new_subject": "Rename New Subject",
          "italics_toggle": "Toggle Italics",
        },
        "hu_hu": {
          "renamed_subjects": "Átnevezett Tantárgyaid",
          "rename_subjects": "Tantárgyak átnevezése",
          "rename_subject": "Tantárgy átnevezése",
          "select_subject": "Válassz tantárgyat",
          "modified_name": "Módosított név",
          "modify_subjects": "Tantárgyak átnevezése",
          "cancel": "Mégse",
          "done": "Kész",
          "rename_new_subject": "Új Tantárgy átnevezése",
          "italics_toggle": "Dőlt betűs megjelenítés",
        },
        "de_de": {
          "renamed_subjects": "Umbenannte Fächer",
          "rename_subjects": "Fächer umbenennen",
          "rename_subject": "Fach umbenennen",
          "select_subject": "Fach auswählen",
          "modified_name": "Geänderter Name",
          "modify_subjects": "Fächer ändern",
          "cancel": "Abbrechen",
          "done": "Erledigt",
          "rename_new_subject": "Neues Fach umbenennen",
          "italics_toggle": "Kursivschrift umschalten",
        },
      };

  String get i18n => uwuifier.uwuifySentence(localize(this, _t));
  String fill(List<Object> params) => uwuifier.uwuifySentence(localizeFill(this, params));
  String plural(int value) => uwuifier.uwuifySentence(localizePlural(value, this, _t));
  String version(Object modifier) => uwuifier.uwuifySentence(localizeVersion(modifier, this, _t));
}
