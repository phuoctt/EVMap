enum LocaleType {
  vi('Việt Nam'),
  en('English');

  const LocaleType(this.title);

  final String title;

  static LocaleType? fromType(String? name) {
    try {
      return LocaleType.values.firstWhere((element) => name == element.name);
    } catch (e) {
      return null;
    }
  }
}
