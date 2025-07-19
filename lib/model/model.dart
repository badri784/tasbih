class Model {
  Model({
    required this.titlezekr,
    this.referance,
    this.note,
    required this.contant,
    required this.repeat,
  });
  final String titlezekr;
  final String contant;
  final int repeat;
  final String? referance;
  final String? note;
}

List<Model> morningazkar = [
  Model(
    titlezekr: "ايه الكرسي",
    contant:
        "اللّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ",
    repeat: 1,
    referance: "آية الكرسى - سورة البقرة 255",
    note:
        "من قالها حين يصبح أجير من الجن حتى يمسى ومن قالها حين يمسى أجير من الجن حتى يصبح.",
  ),
  Model(
    titlezekr: "",
    contant:
        "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم قُلۡ هُوَ ٱللَّهُ أَحَدٌ ﴿١﴾ ٱللَّهُ ٱلصَّمَدُ ﴿٢﴾ لَمۡ يَلِدۡ وَلَمۡ يُولَدۡ ﴿٣﴾ وَلَمۡ يَكُن لَّهُۥ كُفُوًا أَحَدُۢ ﴿٤﴾",
    repeat: 3,
    note: "من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين).",
  ),
];
List<Model> eveningAzkar = [];
List<Model> postPrayerAzkar = [];
