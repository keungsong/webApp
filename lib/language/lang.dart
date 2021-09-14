

class Lang {
  final int id;
  final String flag;
  final String languageCode;

  Lang(this.id, this.flag, this.languageCode);

  static List<Lang> languageList(){
    return <Lang>[
      Lang(1,'EN','en'),
      Lang(2,'LA','lo')
    ];
  }
}
