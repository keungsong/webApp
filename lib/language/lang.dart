class Lang {
  final int id;
  final String name;
  final String flag;
  final String languageCode;

  Lang(this.id, this.name, this.flag, this.languageCode);

  static List<Lang> languageList() {
    return <Lang>[Lang(1, 'EN', 'English', 'en'), Lang(2, 'LA', 'Lao', 'lo')];
  }
}
